package(default_visibility = ['//bazel-ctc:__pkg__'])

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
      "atom|gcc": "cc-compiler-atom",
      "k8|clang": "cc-compiler-k8",
    },
    visibility = ["//visibility:public"],
)

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "cc-compiler-atom",
    all_files = ":empty",
    compiler_files = ":empty",
    cpu = "atom",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)

cc_toolchain(
    name = "cc-compiler-k8",
    all_files = ":empty",
    compiler_files = ":empty",
    cpu = "k8",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)
