load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resource")

core_resource(
    name = "core_resource",
    src = ":src/Castle.Core/DynamicProxy/DynProxy.snk",
    identifier = "Castle.Core.DynamicProxy.DynProxy.snk",
)

core_library(
    name = "Castle.Core.dll",
    srcs = glob(["src/Castle.Core/**/*.cs"]),
    defines = [
        "FEATURE_NETCORE_REFLECTION_API",
        "FEATURE_TEST_SERILOGINTEGRATION",
    ],
    keyfile = ":buildscripts/CastleKey.snk",
    nowarn = [
        "1701",
        "1702",
        "CS1591",
        "CS3014",
        "CS3003",
        "CS3001",
        "CS3021",
        "CS0612",
        "CS0618",
    ],
    visibility = ["//visibility:public"],
    deps = [
        #"@io_bazel_rules_dotnet//dotnet/stdlib.core:Microsoft.AspNetCore.App",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:p1_system.diagnostics.eventlog.dll",
    ],
)
