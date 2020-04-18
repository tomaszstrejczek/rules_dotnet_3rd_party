load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

filegroup(
    name = "cecil_common",
    srcs = ["ProjectInfo.cs"] + glob([
        "Mono/*.cs",
    ]) + glob([
        "Mono.Cecil/*.cs",
    ]) + glob([
        "Mono.Cecil.Cil/*.cs",
    ]) + glob([
        "Mono.Cecil.Metadata/*.cs",
    ]) + glob([
        "Mono.Cecil.PE/*.cs",
    ]) + glob([
        "Mono.Collections.Generic/*.cs",
    ]) + glob([
        "Mono.Security.Cryptography/*.cs",
    ]),
)

core_library(
    name = "cecil.dll",
    srcs = [":cecil_common"],
    defines = [
    ],
    keyfile = ":cecil.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)
