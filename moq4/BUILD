load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resx")

core_resx(
    name = "core_resource",
    src = ":moq4/src/Moq/Properties/Resources.resx",
    identifier = "Moq.Properties.Resources.resources",
)

core_library(
    name = "Moq",
    srcs = glob(["moq4/src/Moq/**/*.cs"]),
    defines = [
        "NETCORE",
    ],
    keyfile = ":moq4/Moq.snk",
    resources = [":core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "//TypeNameFormatter",
        "//castle.core:Castle.Core",
        "//ifluentinterface:IFluentInterface",
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
    ],
)
