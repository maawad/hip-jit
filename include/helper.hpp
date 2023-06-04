#pragma once
#define hip_try(call)                                                                 \
  do {                                                                                \
    hipError_t err = static_cast<hipError_t>(call);                                   \
    if (err != hipSuccess) {                                                          \
      printf("HIP error at %s %d: %s\n", __FILE__, __LINE__, hipGetErrorString(err)); \
      std::terminate();                                                               \
    }                                                                                 \
  } while (0)