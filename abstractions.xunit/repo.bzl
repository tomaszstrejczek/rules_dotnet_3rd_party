load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

core_library(
    name = "abstractions.xunit.dll",
    srcs = glob(["**/*.cs"]),
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
    ],
)
