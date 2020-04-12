load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

core_library(
    name = "TypeNameFormatter.dll",
    srcs = glob(["TypeNameFormatter/src/TypeNameFormatter/**/*.cs"]),
    defines = [
    ],
    keyfile = ":typenameformatter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)
