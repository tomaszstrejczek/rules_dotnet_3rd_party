load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resource", "core_xunit_test")

core_library(
    name = "TypeNameFormatter",
    srcs = glob(["TypeNameFormatter/src/TypeNameFormatter/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.security.principal.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.text.regularexpressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.formatters.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
    ],
    keyfile = ":typenameformatter.snk",
)
