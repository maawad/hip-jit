input=inputs/llvm_bitcode/printf_kernel-hip-amdgcn-amd-amdhsa-gfx1100.bc
entry=printf_kernel
./build/bin/example --verbose=true --path=$input --entry=$entry