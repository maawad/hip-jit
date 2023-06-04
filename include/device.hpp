#pragma once

#include <hip/hip_runtime.h>

#include <iostream>

#include "helper.hpp"

hipDevice_t get_hip_device(const int device_id, bool verbose = false) {
  hipDevice_t device;
  hipDeviceProp_t device_prop;
  int device_count = 0;
  hip_try(hipInit(0));  // Flag parameter must be zero
  hip_try(hipDeviceGet(&device, device_id));
  hip_try(hipGetDeviceProperties(&device_prop, device_id));
  if (verbose) { std::cout << "Device[" << device_id << "]: " << device_prop.name << std::endl; }
  return device;
}