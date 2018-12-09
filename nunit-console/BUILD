load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resource", "core_xunit_test")

filegroup(
  name = "engine_api_common",
  srcs = [
    ":nunit-console/src/CommonAssemblyInfo.cs",
    ":nunit-console/src/NUnitEngine/EngineVersion.cs",
  ]
)

core_library(
    name = "engine.api",
    srcs = glob(["nunit-console/src/NUnitEngine/nunit.engine.api/**/*.cs"]) + [":engine_api_common"],
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD1_6",
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
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.formatters.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:microsoft.dotnet.platformabstractions.dll",
    ],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    keyfile = ":nunit-console/src/nunit.snk",
)

filegroup(
  name = "engine_common",
  srcs = [
    ":nunit-console/src/CommonAssemblyInfo.cs",
    ":nunit-console/src/NUnitEngine/EngineVersion.cs",
    ":nunit-console/src/NUnitEngine/nunit-agent/AgentExitCodes.cs",
  ]
)

core_library(
    name = "engine",
    srcs = glob(["nunit-console/src/NUnitEngine/nunit.engine/**/*.cs"]) + [":engine_common"],
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD1_6",
        "NETSTANDARD",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    deps = [        
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:microsoft.dotnet.platformabstractions.dll",
        "//mono-cecil:cecil",
	    ":engine.api",
    ],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    keyfile = ":nunit-console/src/nunit.snk",
)

