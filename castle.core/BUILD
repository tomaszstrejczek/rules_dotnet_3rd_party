load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resource", "core_resx")

core_resource(
    name = "core_resource",
    src = ":Core/src/Castle.Core/DynamicProxy/DynProxy.snk",
    identifier = "Castle.Core.DynamicProxy.DynProxy.snk",
)

core_library(
    name = "Castle.Core.dll",
    srcs = glob(["Core/src/Castle.Core/**/*.cs"]),
    defines = [
    ],
    keyfile = ":Core/buildscripts/CastleKey.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.queryable.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.reflection.emit.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.reflection.typeextensions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.threading.tasks.extensions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xmldocument.dll",
    ],
)
