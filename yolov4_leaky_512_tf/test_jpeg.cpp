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
  std::string model = argv[1];
  util::StopWatch time;
  time.start();
  vitis::ai::main_for_jpeg_demo(
      argc, argv,
      [model] {
        return vitis::ai::Classification::create(model);
      },
      process_result, 2);
  time.stop();
  std::cout << "Execution time : " << time.printTU() << '\n';
  return 0;
}