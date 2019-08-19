load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resource", "core_xunit_test")

filegroup(
    name = "cecil_common",
    srcs = [":cecil/ProjectInfo.cs"] + glob([
        "cecil/Mono/*.cs",
    ]) + glob([
        "cecil/Mono.Cecil/*.cs",
    ]) + glob([
        "cecil/Mono.Cecil.Cil/*.cs",
    ]) + glob([
        "cecil/Mono.Cecil.Metadata/*.cs",
    ]) + glob([
        "cecil/Mono.Cecil.PE/*.cs",
    ]) + glob([
        "cecil/Mono.Collections.Generic/*.cs",
    ]) + glob([
        "cecil/Mono.Security.Cryptography/*.cs",
    ]),
)

core_library(
    name = "cecil.dll",
    srcs = [":cecil_common"],
    defines = [
    ],
    keyfile = ":cecil/cecil.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.formatters.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.security.principal.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.text.regularexpressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.dll",
    ],
)
