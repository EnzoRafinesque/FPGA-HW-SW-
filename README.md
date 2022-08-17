# Steps to create model and run a pre-trained NN (neural network) through vitis-ai

## Start Vitis AI 

following the installation of docker and vitis following: https://github.com/Xilinx/Vitis-AI
open vitis AI : 
```
./docker_run.sh xilinx/vitis-ai-cpu:latest
```
And you should arrive here:

![image](https://user-images.githubusercontent.com/107047264/183611775-c83a1626-83c1-45dc-8529-33ecde42511e.png)

## Model selection

first let's open the list of availables pretrained model on vitis ai zoo
```
ls model_zoo/model-list
```
Then scroll until you find the model you wish to use. Now we’ll work on the NT VGG16 (16 layers) with the pruning ratio 30.96:
![image](https://user-images.githubusercontent.com/107047264/183612464-ec0f730b-8aef-499a-84fc-d0c5f37267c8.png)

Then look at the yaml file and download the necessary link depending on the board we’ll use.
If you want a model ready to be deployed on a board you can directly download it through the corresponding link. In our case we want the model for GPU and we will run the steps to arrive to a deployable model on our board:
![image](https://user-images.githubusercontent.com/107047264/183612873-5c84f37e-2401-4466-9f95-3412bcf0c125.png)

let's download the link with `wget` and then extract it.
Then we activate the environment needed. The first letters in the name of the model show the environment used, here tf for tensorflow. So we checks the conda environment availables and then activate the one we want:

![image](https://user-images.githubusercontent.com/107047264/183613515-3f4b1a23-79f6-442e-975e-47a89d458590.png)

Enter in the folder we just extracted

![image](https://user-images.githubusercontent.com/107047264/183613713-8c158e02-cf58-4d32-bd06-042520e438a7.png)

Inside we can find a readme that explains the steps to follow.

First let’s use the requirement.txt to install the requirements for this model
```
pip install -r requirements.txt
```
##  Quantization

For the quantization you need a frozen graph (.pb containing all information in a single file), and between 100 and 1000 images from the validation set from the database. Those images are used for the calibration when the model convert float to int.
Once the images download its put in the data folder with a .txt referencing the name of all images. You can find a script that generate the data at the correct size and correct name but in our case it's ok.
then go to the quantize/ folder and run the script 
```
bash quantize.sh
```
The results will be store in the folder quantized.
Be aware the readme still indicates that 2 files will be created but since Vitis-AI new version only one is created.
In order to see the specifications of the model (including inputs, outputs, layers…) we will use netron.
First let’s install it:

![image](https://user-images.githubusercontent.com/107047264/183615559-0489d544-1307-498c-969e-b380324a6bd2.png)

And open the int graph:
```
netron name_of_the_graph.pb
```

## Compilation
Using the .pb obtained previously and the .json the .json for the architecture of the specified DPU (available on viis ai github) we compile with the command “vai_c_tensorflow”  as below:
```
vai_c_tensorflow -f /PATH/TO/quantized_model.pb -a /PATH/TO/arch.json -o /OUTPUTPATH -n xmodel_name
```

From now we have the xmodel:

![image](https://user-images.githubusercontent.com/107047264/183616411-322d1712-f9bd-487d-853f-818cccd30699.png)

## Build the application

Now let’s connect our board (zcu104) to create the application. 
From the board terminal we create/modify the test we want to realize and then build it. Here you can find the example we used to test any classification model and to have  the execution time:
```cpp
/*
 * Copyright 2019 Xilinx Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <glog/logging.h>

#include <iostream>
#include <memory>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <vitis/ai/classification.hpp>
#include <vitis/ai/demo.hpp>
#include "app-general.h"

#include "./process_result.hpp"

int main(int argc, char* argv[]) {
	td::string model = argv[1];
	util::StopWatch time;
	time.start();
	vitis::ai::main_for_jpeg_demo(argc, argv,[model] {return vitis::ai::Classification::create(model);}, process_result, 2);
	time.stop();
	std::cout << "Execution time : " << time.printTU() << '\n';
	return 0;
}
```
!!!!!!!! the environment and libraries/tests for the board are from the image file from Xilinx. In the repository is tests and process we used but there are on the image files with all the environment needed. There are here only if you want to have a look !!!!!!!!!

## Running the model

To conclude, to run the model we need the application built before, the prototxt from the quantization, the .json for the specified board and the xmodel from compilation (we rename or model vgg_16_tf . Then we choose the image we want our model to recognize under the name 001.jpeg (the image must have little dimensions such as 300x300). In this example we try this picture:

![image](https://user-images.githubusercontent.com/107047264/183617354-2e40e3cf-46df-4399-bab6-8aebe86bdec0.png)

![image](https://user-images.githubusercontent.com/107047264/183617453-97214679-fc29-4af9-84c1-e71e5b780e21.png)

## Running real time detetction

Now that we know the steps to quantize, compile and run a vitis zoo model on the board. Now we want to try to run a real time detection through the board.

We will use for that:
- the board zcu104
- a camera conected to the usb port of the board ( See3CAM)
- a monitor conected to the the display port of the board

For the application we are using the test_video_detection from Xilinx. As seen previously this test can be modified.
Turn on the board and monitor at the same time to create the link between both. The monitor should display the file explorer of the board. 
Now from the board shell open on your computer use the line:
```
DISPLAY =: 0.0 
```
And then the command line for yolov4  
```
./test_video_yolov4 yolov4_leaky_512_tf 0 -t 8 >/dev/null 2>&1 
```
- test_video_yolov4 corresponds to your test application depending on the detection neural network chosen.
- yolov4_leaky_512_tf is the folder containing the files from quantization/compilation or directly models from vitis zoo. It regroups .xmodel, .json, .txt, .prototxt
- 0 refers to the camera, if you want to run a file replace 0 by the path to the file
- -t 8 is the number of threads
- /dev/null 2>&1 exports the video flux to the monitor 

