load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resource", "core_xunit_test")

core_library(
    name = "nunit.framework",
    srcs = glob(["nunit/src/NUnitFramework/framework/**/*.cs"]) + ["nunit/src/NUnitFramework/FrameworkVersion.cs"],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit/src/nunit.snk",
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

core_library(
    name = "nunitlite",
    srcs = glob(["nunit/src/NUnitFramework/nunitlite/**/*.cs"]),
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]) + glob(["nunit/src/NUnitFramework/nunitlite/Schemas/*.xsd"]),
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
    ],
    keyfile = ":nunit/src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit.framework",
    ],
)

core_library(
    name = "mock-assembly",
    srcs = glob(["nunit/src/NUnitFramework/mock-assembly/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
    ],
    keyfile = ":nunit/src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunitlite",
    ],
)

core_library(
    name = "testdata",
    srcs = glob(["nunit/src/NUnitFramework/testdata/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
    ],
    keyfile = ":nunit/src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit.framework",
    ],
)
