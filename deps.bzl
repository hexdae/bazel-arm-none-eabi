"""deps.bzl"""

load(
    "@arm_gnu_toolchain//toolchain:toolchain.bzl",
    "register_arm_gnu_toolchain",
    "target_constraints",
)

GCC_ARM_NONE_EABI = {
    "9.2.1": [
        {
            "name": "arm_none_eabi_darwin_x86_64",
            "sha256": "1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0",
            "strip_prefix": "gcc-arm-none-eabi-9-2019-q4-major",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2?revision=c2c4fe0e-c0b6-4162-97e6-7707e12f2b6e&la=en&hash=EC9D4B5F5B050267B924F876B306D72CDF3BDDC0",
        },
        {
            "name": "arm_none_eabi_darwin_arm64",
            "sha256": "1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0",
            "strip_prefix": "gcc-arm-none-eabi-9-2019-q4-major",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2?revision=c2c4fe0e-c0b6-4162-97e6-7707e12f2b6e&la=en&hash=EC9D4B5F5B050267B924F876B306D72CDF3BDDC0",
        },
        {
            "name": "arm_none_eabi_linux_x86_64",
            "sha256": "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a",
            "strip_prefix": "gcc-arm-none-eabi-9-2019-q4-major",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2?revision=108bd959-44bd-4619-9c19-26187abf5225&la=en&hash=E788CE92E5DFD64B2A8C246BBA91A249CB8E2D2D",
        },
        {
            "name": "arm_none_eabi_linux_aarch64",
            "sha256": "1f5b9309006737950b2218250e6bb392e2d68d4f1a764fe66be96e2a78888d83",
            "strip_prefix": "gcc-arm-none-eabi-9-2019-q4-major",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-aarch64-linux.tar.bz2?revision=4583ce78-e7e7-459a-ad9f-bff8e94839f1&la=en&hash=550DB9C0184B7C70B6C020A5DCBB9D1E156264B7",
        },
        {
            "name": "arm_none_eabi_windows_x86_64",
            "sha256": "e4c964add8d0fdcc6b14f323e277a0946456082a84a1cc560da265b357762b62",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-win32.zip?revision=20c5df9c-9870-47e2-b994-2a652fb99075&la=en&hash=347C07EEEB848CC8944F943D8E1EAAB55A6CA0BC",
            "bin_extension": ".exe",
        },
    ],
    "13.2.1": [
        {
            "name": "arm_none_eabi_darwin_x86_64",
            "sha256": "075faa4f3e8eb45e59144858202351a28706f54a6ec17eedd88c9fb9412372cc",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-darwin-x86_64-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-darwin-x86_64-arm-none-eabi.tar.xz?rev=a3d8c87bb0af4c40b7d7e0e291f6541b&hash=10927356ACA904E1A0122794E036E8DDE7D8435D",
        },
        {
            "name": "arm_none_eabi_darwin_arm64",
            "sha256": "39c44f8af42695b7b871df42e346c09fee670ea8dfc11f17083e296ea2b0d279",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-darwin-arm64-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-darwin-arm64-arm-none-eabi.tar.xz?rev=73e10891de3d41e29e95ac2878742b74&hash=6036196A3358CB5AD85FC01DFD0FEC02A",
        },
        {
            "name": "arm_none_eabi_linux_x86_64",
            "sha256": "6cd1bbc1d9ae57312bcd169ae283153a9572bd6a8e4eeae2fedfbc33b115fdbb",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz?rev=e434b9ea4afc4ed7998329566b764309&hash=688C370BF08399033CA9DE3C1CC8CF8E31D8C441",
        },
        {
            "name": "arm_none_eabi_linux_aarch64",
            "sha256": "8fd8b4a0a8d44ab2e195ccfbeef42223dfb3ede29d80f14dcf2183c34b8d199a",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-aarch64-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-aarch64-arm-none-eabi.tar.xz?rev=17baf091942042768d55c9a304610954&hash=7F32B9E3ADFAFC4F8F74C30EBBBFECEB1AC96B60",
        },
        {
            "name": "arm_none_eabi_windows_x86_64",
            "sha256": "51d933f00578aa28016c5e3c84f94403274ea7915539f8e56c13e2196437d18f",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-mingw-w64-i686-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-mingw-w64-i686-arm-none-eabi.zip?rev=93fda279901c4c0299e03e5c4899b51f&hash=A3C5FF788BE90810E121091C873E3532336C8D46",
            "bin_extension": ".exe",
        },
    ],
}

GCC_ARM_NONE_LINUX_GNUEABIHF = {
    "13.2.1": [
        {
            "name": "arm_none_linux_gnueabihf_linux_x86_64",
            "sha256": "df0f4927a67d1fd366ff81e40bd8c385a9324fbdde60437a512d106215f257b3",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-linux-gnueabihf",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-linux-gnueabihf.tar.xz?rev=adb0c0238c934aeeaa12c09609c5e6fc&hash=68DA67DE12CBAD82A0FA4B75247E866155C93053",
            "patches": ["@arm_gnu_toolchain//toolchain:patches/0001-Resolve-libc-relative-to-sysroot.patch"],
        },
        {
            "name": "arm_none_linux_gnueabihf_linux_aarch64",
            "sha256": "8ad384bb328bccc44396d85c8f8113b7b8c5e11bcfef322e77cda3ebe7baadb5",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-aarch64-arm-none-linux-gnueabihf",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-aarch64-arm-none-linux-gnueabihf.tar.xz?rev=fbdb67e76c8349e5ad27a7c40fb270c9&hash=8CD3EBFFDC5E211275B705F6F9BCC0F6F5B4A53E",
            "patches": ["@arm_gnu_toolchain//toolchain:patches/0001-Resolve-libc-relative-to-sysroot.patch"],
        },
        {
            "name": "arm_none_linux_gnueabihf_windows_x86_64",
            "sha256": "047e72bcef8f7767691f36929a8c74ef66f717cf6264a31f48dd31bfb067f4c8",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-mingw-w64-i686-arm-none-linux-gnueabihf",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-mingw-w64-i686-arm-none-linux-gnueabihf.zip?rev=14b6dd20622a4beabb60a6ee41a4c141&hash=C1F9FA6DE8259B5ACA0211139F4304F2B942E489",
            "patches": ["@arm_gnu_toolchain//toolchain:patches/0001-Resolve-libc-relative-to-sysroot.patch"],
            "bin_extension": ".exe",
        },
    ],
}

def _arm_gnu_cross_hosted_platform_specific_repo_impl(repository_ctx):
    """Defines a host-specific repository for the ARM GNU toolchain."""
    repository_ctx.download_and_extract(
        sha256 = repository_ctx.attr.sha256,
        url = repository_ctx.attr.url,
        stripPrefix = repository_ctx.attr.strip_prefix,
    )
    repository_ctx.template(
        "BUILD.bazel",
        Label("@arm_gnu_toolchain//toolchain:templates/compiler.BUILD"),
        substitutions = {
            "%toolchain_prefix%": repository_ctx.attr.toolchain_prefix,
            "%version%": repository_ctx.attr.version,
            "%bin_extension%": repository_ctx.attr.bin_extension,
        },
    )
    for patch in repository_ctx.attr.patches:
        repository_ctx.patch(patch, strip = 1)

arm_gnu_cross_hosted_platform_specific_repo = repository_rule(
    implementation = _arm_gnu_cross_hosted_platform_specific_repo_impl,
    attrs = {
        "sha256": attr.string(mandatory = True),
        "url": attr.string(mandatory = True),
        "toolchain_prefix": attr.string(mandatory = True),
        "version": attr.string(mandatory = True),
        "strip_prefix": attr.string(),
        "patches": attr.label_list(),
        "bin_extension": attr.string(default = ""),
    },
)

def _arm_gnu_toolchain_repo_impl(repository_ctx):
    """Defines the top-level toolchain repository."""
    repository_ctx.template(
        "BUILD",
        Label("@arm_gnu_toolchain//toolchain:templates/top.BUILD"),
        substitutions = {
            "%toolchain_name%": repository_ctx.attr.toolchain_name,
            "%version%": repository_ctx.attr.version,
            "%toolchain_prefix%": repository_ctx.attr.toolchain_prefix,
        },
    )

    repository_ctx.template(
        "toolchain/BUILD",
        Label("@arm_gnu_toolchain//toolchain:templates/toolchain.BUILD"),
        substitutions = {
            "%toolchain_name%": repository_ctx.attr.toolchain_name,
            "%version%": repository_ctx.attr.version,
            "%toolchain_prefix%": repository_ctx.attr.toolchain_prefix,
        },
    )

arm_gnu_toolchain_repo = repository_rule(
    implementation = _arm_gnu_toolchain_repo_impl,
    attrs = {
        "toolchain_name": attr.string(mandatory = True),
        "toolchain_prefix": attr.string(mandatory = True),
        "version": attr.string(mandatory = True),
    },
)

def arm_gnu_toolchain_deps(toolchain, toolchain_prefix, version, archives):
    arm_gnu_toolchain_repo(
        name = toolchain,
        toolchain_name = toolchain,
        toolchain_prefix = toolchain_prefix,
        version = version,
    )

    for attrs in archives[version]:
        arm_gnu_cross_hosted_platform_specific_repo(
            toolchain_prefix = toolchain_prefix,
            version = version,
            **attrs
        )

def register_default_arm_gnu_toolchains(repo, toolchain_prefix):
    for cpu in target_constraints[toolchain_prefix]:
        register_arm_gnu_toolchain(
            name = "@{}//toolchain:{}".format(repo, cpu),
            prefix = toolchain_prefix,
        )

# arm-none-eabi

def arm_none_eabi_deps(version = "13.2.1", archives = GCC_ARM_NONE_EABI):
    """Workspace dependencies for the arm none eabi gcc toolchain

    Args:
        version: The version of the toolchain to use. If None, the latest version is used.
        archives: A dictionary of version to archive attributes.
    """
    arm_gnu_toolchain_deps(
        "arm_none_eabi",
        "arm-none-eabi",
        version,
        archives,
    )

def register_default_arm_none_eabi_toolchains():
    register_default_arm_gnu_toolchains(
        repo = "arm_none_eabi",
        toolchain_prefix = "arm-none-eabi",
    )

# arm-none-linux-gnueabihf

def arm_none_linux_gnueabihf_deps(version = "13.2.1", archives = GCC_ARM_NONE_LINUX_GNUEABIHF):
    """Workspace dependencies for the arm linux gcc toolchain

    Args:
        version: The version of the toolchain to use. If None, the latest version is used.
        archives: A dictionary of the version to archive attributes.
    """
    arm_gnu_toolchain_deps(
        "arm_none_linux_gnueabihf",
        "arm-none-linux-gnueabihf",
        version,
        archives,
    )

def register_default_arm_none_linux_gnueabihf_toolchains():
    register_default_arm_gnu_toolchains(
        repo = "arm_none_linux_gnueabihf",
        toolchain_prefix = "arm-none-linux-gnueabihf",
    )
