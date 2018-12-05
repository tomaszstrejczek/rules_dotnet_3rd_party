load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resx", "core_vstest_test")

core_resx(
    name = "core_resource",
    src = "testfx/src/TestFramework/MSTest.Core/Resources/FrameworkMessages.resx",
    identifier="Microsoft.VisualStudio.TestTools.UnitTesting.Resources.FrameworkMessages.resources",
)

core_library(
    name = "MSTest.Core",
    srcs = glob(["testfx/src/TestFramework/MSTest.Core/**/*.cs"]) + glob(["testfx/src/TestFramework/Extension.Shared/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
        ":Extension.Core",
    ],
    keyfile = ":testfx.snk",
)

core_library(
    name = "Extension.Core",
    srcs = glob(["testfx/src/TestFramework/Extension.Core/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
    ],
    keyfile = ":testfx.snk",
)

