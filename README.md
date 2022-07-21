# Optimizations thanks to pragmas

## Overview
Here we'll re-use the matmul system (multiplication of 2 matrix) and optimize it with pragmas. To compare the results we check the latency, ressources (LUT and FF) and the excecution time on the zcu104 board.

## Pragmas' used 
### Pipeline
Using pipeline reduces the initiation interval for a function or loop by allowing the concurrent execution of operations. For a better understanding below a representation of pipeline extracted from Vitis High-Level Synthesis User Guide.
![image](https://user-images.githubusercontent.com/107047264/180212352-65bf49bc-338c-4e4f-894f-d5fd9efb9caa.png)

To use the pipeline we use under the loop we want to optimize: 
`#pragma HLS PIPELINE`

### Loop flatten
Using loop flatten allows nested loops to be flattened into a single loop hierarchy with improved latency. Here an example where using the loop flatten we go from 36 transition to 28.

![image](https://user-images.githubusercontent.com/107047264/180215366-e7693c02-38fd-402b-a54d-ef69e9a9e9d4.png)

 By default, loops are flattened and we use "off" if it optimise your case under the selected loop with `#pragma HLS LOOP_FLATTEN off` 
 
 ### Array partition
 Using array partion partitions an array into smaller arrays or individual elements. There are 3 types of array partiton :
 - cyclic :The array is partitioned cyclically by putting one element into each new array before coming back to the first array to repeat the cycle until the array is fully partitioned. The factor determine how many arrays are used
 - block :Smaller arrays are created from consecutive blocks of the original array. The factor determines the numer of blocks
 - complete :Complete partitioning means decompose the array into individual elements
 
 To use the array partition on an array called A, with a cyclic form, a factor 8 and an array dimension 2 write `#pragma HLS ARRAY_PARTITION variable=A cyclic factor=8 dim=2`
 
 ### Dataflow 
Using dataflow enables task-level pipelining. That allows consumer functions or loops to start operation before the producer functions or loops have completed. This allows functions or loops to operate in parallel. For a better understanding below a representation of dataflow extracted from Vitis High-Level Synthesis User Guide.
 
![image](https://user-images.githubusercontent.com/107047264/180222871-343673aa-45b5-4198-96fb-62cc67d1df26.png)

## Experiments
Now we'll try the pragmas and compare the optimization. We test the same code seven times :
- without any pragmas
- with pipeline
- with pipeline and loop flatten
- with pipeline, loop flatten and array partition factor 32
- with pipeline, loop flatten, array partition factor 32 and dataflow
- with dataflow
- with pipeline, loop flatten and array partition factor 8


