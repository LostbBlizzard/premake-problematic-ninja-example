#include <filesystem> 
#include <iostream>

int main() {
	std::cout << " working directory: " << std::filesystem::current_path() << std::endl;

}
