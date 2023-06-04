// jitter
#include <cmd.hpp>
#include <device.hpp>
#include <jitter/jitter.hpp>

// std::
#include <iostream>
#include <string>
#include <vector>

void gpu_build(int argc, char** argv) {
  std::vector<std::string> arguments(argv, argv + argc);

  const bool verbose             = get_arg_value<bool>(arguments, "verbose").value_or(true);
  const std::string kernel_path  = get_arg_value<std::string>(arguments, "path").value_or("");
  const std::string kernel_entry = get_arg_value<std::string>(arguments, "entry").value_or("");

  auto device = get_hip_device(0, verbose);

  jitter::kernel kernel(kernel_path, kernel_entry, jitter::input_type::LLVM_BITCODE);
  kernel.compile(verbose);
  if (verbose) std::cout << "Ctor!" << std::endl;
  void* args;
  uint32_t num_threads = 128;
  uint32_t block_size  = 64;
}

int main(int argc, char** argv) { gpu_build(argc, argv); }