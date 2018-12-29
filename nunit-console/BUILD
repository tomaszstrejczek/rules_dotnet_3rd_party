load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resource", "core_xunit_test")

filegroup(
    name = "engine_api_common",
    srcs = [
        ":nunit-console/src/CommonAssemblyInfo.cs",
        ":nunit-console/src/NUnitEngine/EngineVersion.cs",
    ],
)

core_library(
    name = "engine.api",
    srcs = glob(["nunit-console/src/NUnitEngine/nunit.engine.api/**/*.cs"]) + [":engine_api_common"],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    defines = [
        "NETSTANDARD1_6",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit-console/src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:microsoft.dotnet.platformabstractions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.formatters.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.security.principal.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.text.regularexpressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.linq.dll",
    ],
)

filegroup(
    name = "engine_common",
    srcs = [
        ":nunit-console/src/CommonAssemblyInfo.cs",
        ":nunit-console/src/NUnitEngine/EngineVersion.cs",
        ":nunit-console/src/NUnitEngine/nunit-agent/AgentExitCodes.cs",
    ],
)

core_library(
    name = "engine",
    srcs = glob(["nunit-console/src/NUnitEngine/nunit.engine/**/*.cs"]) + [":engine_common"],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    defines = [
        "NETSTANDARD1_6",
        "NETSTANDARD",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit-console/src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":engine.api",
        "//mono-cecil:cecil",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:microsoft.dotnet.platformabstractions.dll",
    ],
)
