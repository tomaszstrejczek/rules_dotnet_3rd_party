load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_stdlib")

core_stdlib(name = "microsoft.dotnet.platformabstractions.dll")

filegroup(
    name = "engine_api_common",
    srcs = [
        ":nunit-console/src/CommonAssemblyInfo.cs",
        ":nunit-console/src/NUnitEngine/EngineVersion.cs",
    ],
)

core_library(
    name = "engine.api.dll",
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
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
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
    name = "engine.dll",
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
        ":engine.api.dll",
        ":microsoft.dotnet.platformabstractions.dll",
        "//mono-cecil:cecil.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)
