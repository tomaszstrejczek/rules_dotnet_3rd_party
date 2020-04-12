load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

core_library(
    name = "assert.xunit.dll",
    srcs = glob(["**/*.cs"]),
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

filegroup(
    name = "common_files",
    srcs = [
        ":Sdk/ArgumentFormatter.cs",
        ":Sdk/AssertEqualityComparer.cs",
        ":Sdk/AssertEqualityComparerAdapter.cs",
    ],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "test_files",
    srcs = [
        ":Sdk/ArgumentFormatter.cs",
    ],
    visibility = ["//visibility:public"],
)
