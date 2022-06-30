/**

*/
#pragma once

#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1

#include <CL/cl2.hpp>
#include <ap_int.h>
#include <ap_fixed.h>

#define MAX_SIZE 4096

// Customized buffer allocation for 4k (4096) boundary alignment
template <typename T>
struct aligned_allocator {
    using value_type = T;
    T* allocate(std::size_t num) {
        void* ptr = nullptr;
        if (posix_memalign(&ptr, MAX_SIZE, num * sizeof(T))) throw std::bad_alloc();
        return reinterpret_cast<T*>(ptr);
    }
    void deallocate(T* p, std::size_t num) { free(p); }
};



typedef ap_int<16> data_t;
//typedef int data_t;
#define MAX_DIM_SIZE 32

#define HW_TOP_NAME "matmul"
//#define HW_TOP_NAME "matmul_opt_1"
//#define HW_TOP_NAME "matmul_opt_2"
//#define HW_TOP_NAME "matmul_opt_3"
//#define HW_TOP_NAME "matmul_opt_4"
//#define HW_TOP_NAME "matmul_opt_5"
//#define HW_TOP_NAME "matmul_opt_6"
