load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def arm_none_eabi_deps():
    http_archive(
        name = "arm_none_eabi_darwin",
        build_file = "@arm_none_eabi//toolchain:compiler.BUILD",
        sha256 = "1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0",
        strip_prefix = "gcc-arm-none-eabi-9-2019-q4-major",
        url = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2?revision=c2c4fe0e-c0b6-4162-97e6-7707e12f2b6e&la=en&hash=EC9D4B5F5B050267B924F876B306D72CDF3BDDC0",
    )

    http_archive(
        name = "arm_none_eabi_linux_x86_64",
        build_file = "@arm_none_eabi//toolchain:compiler.BUILD",
        sha256 = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a",
        strip_prefix = "gcc-arm-none-eabi-9-2019-q4-major",
        url = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2?revision=108bd959-44bd-4619-9c19-26187abf5225&la=en&hash=E788CE92E5DFD64B2A8C246BBA91A249CB8E2D2D",
    )

    http_archive(
        name = "arm_none_eabi_windows",
        build_file = "@arm_none_eabi//toolchain:compiler.BUILD",
        sha256 = "e4c964add8d0fdcc6b14f323e277a0946456082a84a1cc560da265b357762b62",
        url = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-win32.zip?revision=20c5df9c-9870-47e2-b994-2a652fb99075&la=en&hash=347C07EEEB848CC8944F943D8E1EAAB55A6CA0BC",
    )

    native.register_toolchains(
        "@arm_none_eabi//toolchain:macos",
        "@arm_none_eabi//toolchain:linux",
        "@arm_none_eabi//toolchain:windows",
    )
