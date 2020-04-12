load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

core_library(
    name = "nunit.framework.dll",
    srcs = glob(["nunit/src/NUnitFramework/framework/**/*.cs"]) + ["nunit/src/NUnitFramework/FrameworkVersion.cs"],
    data = glob(["nunit/src/NUnitFramework/framework/Schemas/*.xsd"]),
    defines = [
        "NETSTANDARD2_0",
        "SERIALIZATION",
        "ASYNC",
        #"PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit/src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_library(
    name = "nunitlite.dll",
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
        ":nunit.framework.dll",
    ],
)

core_library(
    name = "mock-assembly.dll",
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
        ":nunitlite.dll",
    ],
)

# core_library(
#     name = "testdata.dll",
#     srcs = glob(["nunit/src/NUnitFramework/testdata/**/*.cs"]),
#     defines = [
#         "NETSTANDARD2_0",
#         "SERIALIZATION",
#         "ASYNC",
#         "PLATFORM_DETECTION",
#     ],
#     keyfile = ":nunit/src/nunit.snk",
#     visibility = ["//visibility:public"],
#     deps = [
#         ":nunit.framework.dll",
#     ],
# )
