// hipcc printf_kernel.hip -O3 -c -save-temps --offload-arch=gfx1100
#include <hip/hip_runtime.h>
__global__ void printf_kernel() {
  auto thread_id = threadIdx.x + blockIdx.x * blockDim.x;
  printf("Thread Idx: %i", thread_id);
}