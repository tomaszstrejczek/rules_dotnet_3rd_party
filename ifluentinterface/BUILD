load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resx", "core_vstest_test")

core_library(
    name = "IFluentInterface",
    srcs = glob(["*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
    ],
)

