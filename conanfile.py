from conans import ConanFile, CMake

class SampleConan(ConanFile):
    requires = [
        "tesseract/4.1.1",
    ]
    settings = "os", "arch", "compiler", "build_type"

    def imports(self):
        self.copy("tesseract", dst=".", src="bin")

