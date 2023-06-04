#pragma once

#include "helper.hpp"
// jitter
#include "../types.hpp"
// hip
#include <hip/hip_runtime.h>
#include <hip/hiprtc.h>

// ::std
#include <string>
#include <vector>

namespace jitter::detail {
std::string ptxJIT(hipModule_t& ph_module,
                   hipFunction_t& ph_kernel,
                   hiprtcLinkState& linker_state,
                   const std::string ptx_source,
                   const std::string kernel_entry_string,
                   const input_type type,
                   const bool verbose = false) {
  float walltime;
  const unsigned int log_size = 100000;
  char error_log[log_size], info_log[log_size];
  void* bin_out;
  size_t bin_size;

  // Setup linker options
  // segfaults?
  //   std::vector<hiprtcJIT_option> options{HIPRTC_JIT_WALL_TIME,
  //                                         HIPRTC_JIT_INFO_LOG_BUFFER,
  //                                         HIPRTC_JIT_INFO_LOG_BUFFER_SIZE_BYTES,
  //                                         HIPRTC_JIT_ERROR_LOG_BUFFER,
  //                                         HIPRTC_JIT_ERROR_LOG_BUFFER_SIZE_BYTES,
  //                                         HIPRTC_JIT_LOG_VERBOSE,
  //                                         HIPRTC_JIT_OPTIMIZATION_LEVEL};
  //   std::vector<void*> option_vals{(void*)&walltime,       //
  //                                  (void*)info_log,        //
  //                                  (void*)(long)log_size,  //
  //                                  (void*)error_log,       //
  //                                  (void*)(long)log_size,  //
  //                                  (void*)1,
  //                                  (void*)4};

  //   std::vector<hiprtcJIT_option> options{HIPRTC_JIT_WALL_TIME,
  //                                         HIPRTC_JIT_OPTIMIZATION_LEVEL};
  //   std::vector<void*> option_vals{(void*)&walltime,  //
  //                                  (void*)4};

  std::vector<hiprtcJIT_option> options{HIPRTC_JIT_WALL_TIME,
                                        HIPRTC_JIT_INFO_LOG_BUFFER,
                                        HIPRTC_JIT_INFO_LOG_BUFFER_SIZE_BYTES,
                                        HIPRTC_JIT_ERROR_LOG_BUFFER,
                                        HIPRTC_JIT_ERROR_LOG_BUFFER_SIZE_BYTES,
                                        HIPRTC_JIT_LOG_VERBOSE};
  std::vector<void*> option_vals{(void*)&walltime,       //
                                 (void*)info_log,        //
                                 (void*)(long)log_size,  //
                                 (void*)error_log,       //
                                 (void*)(long)log_size,  //
                                 (void*)1};

  // Creates a linker invocation

  // HIPRTC provides hiprtcJITInputType enumeration type which defines the input types accepted by
  // the Linker APIs. Here are the enum values of hiprtcJITInputType. However only the input types
  // HIPRTC_JIT_INPUT_LLVM_BITCODE, HIPRTC_JIT_INPUT_LLVM_BUNDLED_BITCODE and
  // HIPRTC_JIT_INPUT_LLVM_ARCHIVES_OF_BUNDLED_BITCODE are supported currently.

  hip_try(hiprtcLinkCreate(options.size(), options.data(), option_vals.data(), &linker_state));
  if (verbose) std::cout << "Created Link" << std::endl;

  hiprtcJITInputType jit_input_type;
  if (type == input_type::LLVM_BITCODE) {
    jit_input_type = HIPRTC_JIT_INPUT_LLVM_BITCODE;
  } else if (type == input_type::LLVM_BUNDLED_BITCODE) {
    jit_input_type = HIPRTC_JIT_INPUT_LLVM_BUNDLED_BITCODE;
  } else if (type == input_type::LLVM_BUNDLED_BITCODE) {
    jit_input_type = HIPRTC_JIT_INPUT_LLVM_ARCHIVES_OF_BUNDLED_BITCODE;
  } else {
    std::cout << "Unknown input " << std::endl;
    std::terminate();
  }

  // Load the PTX from the ptx file
  hip_try(hiprtcLinkAddData(linker_state,
                            jit_input_type,
                            (void*)ptx_source.c_str(),
                            strlen(ptx_source.c_str()) + 1,
                            0,
                            0,
                            0,
                            0));
  if (verbose) std::cout << "Added link data" << std::endl;

  // Complete the linker step
  hip_try(hiprtcLinkComplete(linker_state, &bin_out, &bin_size));
  if (verbose) std::cout << "Completed link" << std::endl;

  // Linker walltime and info_log were requested in options above.
  if (verbose) {
    printf("--------------------------------------------------------\n"
           "Link Completed in %f ms.\n"
           "Linker Output:\n%s"
           "\n--------------------------------------------------------\n",
           walltime,
           info_log);
  }
  // Load resulting cuBin into module
  hip_try(hipModuleLoadData(&ph_module, bin_out));
  if (verbose) std::cout << "Loaded module data" << std::endl;

  // Locate the kernel entry point
  hip_try(hipModuleGetFunction(&ph_kernel, ph_module, kernel_entry_string.c_str()));
  if (verbose) std::cout << "Found entry point" << std::endl;

  // Destroy the linker invocation
  hip_try(hiprtcLinkDestroy(linker_state));
  if (verbose) std::cout << "Destroyed link" << std::endl;

  return std::string(info_log);
}  // namespace jitter::detail
}  // namespace jitter::detail