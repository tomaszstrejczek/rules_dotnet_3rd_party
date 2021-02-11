load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

core_library(
    name = "TypeNameFormatter.dll",
    srcs = glob(["src/TypeNameFormatter/**/*.cs"]),
    defines = [
    ],
    keyfile = "@rules_dotnet_3rd_party//:TypeNameFormatter/typenameformatter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
    ],
)
