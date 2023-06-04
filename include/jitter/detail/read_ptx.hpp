#pragma once
#include <cstdint>

namespace jitter::detail {

std::string inline read_file(const std::string file_path) {
  FILE* fp = fopen(file_path.c_str(), "rb");
  if (fp != NULL) {
    fseek(fp, 0, SEEK_END);
    int file_size = ftell(fp);
    char* buf     = new char[file_size + 1];
    fseek(fp, 0, SEEK_SET);
    fread(buf, sizeof(char), file_size, fp);
    fclose(fp);
    buf[file_size]     = '\0';
    std::string source = buf;
    delete[] buf;
    return source;
  } else {
    std::cout << "Failed to open the source at " << file_path << std::endl;
    std::terminate();
  }
  return "";
}
}  // namespace jitter::detail
