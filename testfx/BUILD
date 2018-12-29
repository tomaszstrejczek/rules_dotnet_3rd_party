load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resx")

core_resx(
    name = "core_resource",
    src = "testfx/src/TestFramework/MSTest.Core/Resources/FrameworkMessages.resx",
    identifier = "Microsoft.VisualStudio.TestTools.UnitTesting.Resources.FrameworkMessages.resources",
)

core_library(
    name = "MSTest.Core",
    srcs = glob(["testfx/src/TestFramework/MSTest.Core/**/*.cs"]) + glob([
        "testfx/src/TestFramework/Extension.Shared/**/*.cs",
    ]) + [
        "//testfx:Friends.cs",
    ],
    defines = [
    ],
    keyfile = "//testfx:testfx.snk",
    resources = [":core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":Extension.Core",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
    ],
)

core_library(
    name = "Extension.Core",
    srcs = glob(["testfx/src/TestFramework/Extension.Core/**/*.cs"]),
    defines = [
    ],
    keyfile = "//testfx:testfx.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
    ],
)

core_library(
    name = "PlatformServices.Interface",
    srcs = glob(["testfx/src/Adapter/PlatformServices.Interface/**/*.cs"]),
    defines = [
    ],
    keyfile = "//testfx:testfx.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":Extension.Core",
        ":MSTest.Core",
        "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.dll",
    ],
)

core_library(
    name = "PlatformServices.Portable",
    srcs = glob(["testfx/src/Adapter/PlatformServices.Portable/**/*.cs"]) + glob([
        "testfx/src/Adapter/PlatformServices.Shared/netstandard1.0/Services/**/*.cs",
    ]) + [
        "testfx/src/Adapter/PlatformServices.Shared/netstandard1.0/Constants.cs",
    ],
    defines = [
    ],
    keyfile = "//testfx:testfx.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":PlatformServices.Interface",
    ],
)

core_resx(
    name = "adapter_resource",
    src = "testfx/src/Adapter/MSTest.CoreAdapter/Resources/Resource.resx",
    identifier = "Microsoft.VisualStudio.TestPlatform.MSTest.TestAdapter.Resources.Resource.resources",
)

core_library(
    name = "Microsoft.VisualStudio.TestPlatform.MSTest.TestAdapter",
    srcs = glob(
        ["testfx/src/Adapter/MSTest.CoreAdapter/**/*.cs"],
        exclude = ["testfx/src/Adapter/MSTest.CoreAdapter/Execution/TestContextImpl.cs"],
    ),
    defines = [
    ],
    keyfile = "//testfx:testfx.snk",
    resources = [
        ":adapter_resource",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":PlatformServices.Portable",
    ],
)
