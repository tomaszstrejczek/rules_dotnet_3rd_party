load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

DEFINES = [
    "NETSTANDARD2_0",
    "NETSTANDARD",
    "SERIALIZATION",
    "ASYNC",
    "PLATFORM_DETECTION",
    "PARALLEL",
]

filegroup(
    name = "engine_api_common",
    srcs = [
        "src/CommonAssemblyInfo.cs",
        "src/NUnitEngine/EngineVersion.cs",
    ],
)

core_library(
    name = "engine.api.dll",
    srcs = glob(["src/NUnitEngine/nunit.engine.api/**/*.cs"]) + [":engine_api_common"],
    defines = DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
    ],
)

filegroup(
    name = "engine_common",
    srcs = [
        "src/CommonAssemblyInfo.cs",
        "src/NUnitEngine/EngineVersion.cs",
        "src/NUnitEngine/nunit-agent/AgentExitCodes.cs",
    ],
)

core_library(
    name = "engine.dll",
    srcs = glob(["src/NUnitEngine/nunit.engine/**/*.cs"]) + [":engine_common"],
    defines = DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":engine.api.dll",
        "@microsoft.dotnet.platformabstractions//:lib",
        "@mono-cecil//:cecil.dll",
        "@core_sdk_stdlib//:libraryset",
        ":engine.core.dll",
        "@microsoft.dotnet.internalabstractions//:lib",
    ],
)

core_library(
    name = "engine.core.dll",
    srcs = glob(["src/NUnitEngine/nunit.engine.core/**/*.cs"]) + [":engine_common"],
    defines = DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":engine.api.dll",
        "@microsoft.dotnet.platformabstractions//:lib",
        "@mono-cecil//:cecil.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)
