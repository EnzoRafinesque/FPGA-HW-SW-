# HERO-MDH-Internship_Summer2022_SW_HW_Accel

In this branch we'll extend the AXI data width.

The AXI data width can be change directly in the configuration of the matmul_kernel.prj

![image](https://user-images.githubusercontent.com/107047264/176856378-cdc29b24-d837-425c-bafe-82ed94ece6a2.png)


Then build the project and it should change the size in the project configuration, here the matmul-compile.cfg:

![image](https://user-images.githubusercontent.com/107047264/176856544-405e517d-e926-4441-8ef3-f2dc42ce9a23.png)


In the case where the file isn't modify the project need to be rebuild. 

In our case datas are in 16 bits, with an AXI data width of 32 bits we can see 2 datas (first ones between 0 to 15 below the red line and the second ones above the line) 
in the same bus while checking with Vivado waveform.

![image](https://user-images.githubusercontent.com/107047264/176856269-e06688bd-00c7-4d0a-82d5-8e976ea44088.png)

