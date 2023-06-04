#pragma once
#include <cstdint>
#include <cstring>
#include <filesystem>
#include <fstream>

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

std::vector<std::byte> inline read_binary(const std::string file_path) {
  std::filesystem::path path{file_path};
  auto file_size = std::filesystem::file_size(path);
  std::vector<std::byte> file_contents(file_size);
  std::ifstream stream(path, std::ios::binary);
  if (!stream.read((char*)file_contents.data(), file_contents.size()))
    throw std::runtime_error(file_path + ": " + std::strerror(errno));
  return std::move(file_contents);
}
}  // namespace jitter::detail
