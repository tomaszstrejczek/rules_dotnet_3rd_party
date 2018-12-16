load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resource", "core_xunit_test")

core_library(
    name = "nunit.framework",
    srcs = glob(["nunit/src/NUnitFramework/framework/**/*.cs"]) + ["nunit/src/NUnitFramework/FrameworkVersion.cs"],
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.security.principal.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.text.regularexpressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.formatters.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
    ],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    keyfile = ":nunit/src/nunit.snk",
)

core_library(
    name = "nunitlite",
    srcs = glob(["nunit/src/NUnitFramework/nunitlite/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
    ],
    deps = [
        ":nunit.framework",
    ],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]) + glob(["nunit/src/NUnitFramework/nunitlite/Schemas/*.xsd"]),
    keyfile = ":nunit/src/nunit.snk",
)

core_library(
    name = "mock-assembly",
    srcs = glob(["nunit/src/NUnitFramework/mock-assembly/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
    ],
    deps = [
        ":nunitlite",
    ],
    keyfile = ":nunit/src/nunit.snk",
)

core_library(
    name = "testdata",
    srcs = glob(["nunit/src/NUnitFramework/testdata/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
    ],
    deps = [
        ":nunit.framework",
    ],
    keyfile = ":nunit/src/nunit.snk",
)
