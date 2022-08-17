#include <glog/logging.h>

#include <iostream>
#include <memory>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <vitis/ai/demo.hpp>
#include <vitis/ai/nnpp/yolov3.hpp>
#include <vitis/ai/yolov3.hpp>

#include "./process_result.hpp"


extern int GLOBAL_ENABLE_NEW_IOU;

using namespace std;
int main(int argc, char* argv[]) {
  string model = argv[1];
  GLOBAL_ENABLE_NEW_IOU = 1;
  return vitis::ai::main_for_video_demo(
      argc, argv, [model] { return vitis::ai::YOLOv3::create(model); },
      process_result, 2);
}


