#pragma once
// hip
#include <hip/hip_ext.h>
#include <hip/hip_runtime.h>
#include <hip/hiprtc.h>

#include "detail/ptx_jitter.hpp"
#include "detail/read_ptx.hpp"
#include "types.hpp"
namespace jitter {

struct kernel {
  kernel(const std::string kernel_path,
         const std::string kernel_entry_string,
         const input_type type)
      : h_module_{}
      , h_kernel_{}
      , type_{type}
      , link_state_{}
      , kernel_path_(kernel_path)
      , kernel_source_("")
      , kernel_entry_string_(kernel_entry_string) {
    hip_try(hipInit(0));
  }

  void launch(uint32_t num_threads, uint32_t block_size, void** args, const bool verbose = false) {
    uint32_t num_blocks = (num_threads + block_size - 1) / block_size;
    dim3 block(block_size, 1, 1);
    dim3 grid(num_blocks, 1, 1);

    // Launch the kernel
    hip_try(hipExtModuleLaunchKernel(
        h_kernel_, grid.x, grid.y, grid.z, block.x, block.y, block.z, 0, NULL, args, NULL));
    if (verbose) { std::cout << "Kernel: " << kernel_entry_string_ << " launched" << std::endl; }
  }
  std::string compile(const bool verbose = false) {
    if (kernel_source_ == "") {
      if (kernel_path_ == "") return "Empty kernel";
      kernel_source_ = detail::read_file(kernel_path_);
    }

    return detail::ptxJIT(
        h_module_, h_kernel_, link_state_, kernel_source_, kernel_entry_string_, type_, verbose);
  }
  void set_kernel_source(const std::string source) { kernel_source_ = source; }
  void set_kernel_entry(const std::string entry) { kernel_entry_string_ = entry; }

 private:
  hipModule_t h_module_;
  hipFunction_t h_kernel_;
  input_type type_;
  hiprtcLinkState link_state_;
  std::string kernel_path_;
  std::string kernel_source_;
  std::string kernel_entry_string_;
};
}  // namespace jitter