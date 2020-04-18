load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_nunit3_test", "core_resource")

COMMON_DEFINES = [
    "NETSTANDARD2_0",
    "NETCOREAPP2_0",
    "SERIALIZATION",
    "ASYNC",
    #"PLATFORM_DETECTION",
    "PARALLEL",
    "TASK_PARALLEL_LIBRARY_API",
]

core_library(
    name = "nunit.framework.dll",
    srcs = glob([
        "src/NUnitFramework/framework/**/*.cs",
    ]) + [
        "src/NUnitFramework/FrameworkVersion.cs",
        "src/CommonAssemblyInfo.cs",
    ],
    data = glob(["src/NUnitFramework/framework/Schemas/*.xsd"]),
    defines = COMMON_DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_library(
    name = "nunitlite.dll",
    srcs = glob(["src/NUnitFramework/nunitlite/**/*.cs"]) + ["src/CommonAssemblyInfo.cs"],
    data = glob(["src/NUnitFramework/framework/Schemas/*.xsd"]) + glob(["src/NUnitFramework/nunitlite/Schemas/*.xsd"]),
    defines = COMMON_DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit.framework.dll",
    ],
)

core_library(
    name = "mock-assembly.dll",
    srcs = glob(["src/NUnitFramework/mock-assembly/**/*.cs"]) + ["src/CommonAssemblyInfo.cs"],
    defines = COMMON_DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunitlite.dll",
    ],
)

core_library(
    name = "nunit.testdata.dll",
    srcs = glob(["src/NUnitFramework/testdata/**/*.cs"]) + ["src/CommonAssemblyInfo.cs"],
    defines = COMMON_DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit.framework.dll",
    ],
)

core_library(
    name = "slow-nunit-tests.dll",
    srcs = glob(["src/NUnitFramework/slow-tests/**/*.cs"]) + ["src/CommonAssemblyInfo.cs"],
    defines = COMMON_DEFINES,
    keyfile = "src/nunit.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit.framework.dll",
    ],
)

filegroup(
    name = "schemas",
    srcs = glob(["src/NUnitFramework/framework/Schemas/*"]),
)

core_resource(
    name = "resource1",
    src = "src/NUnitFramework/tests/TestImage1.jpg",
    identifier = "NUnit.Framework.TestImage1.jpg",
)

core_resource(
    name = "resource2",
    src = "src/NUnitFramework/tests/TestImage2.jpg",
    identifier = "NUnit.Framework.TestImage2.jpg",
)

core_resource(
    name = "resource3",
    src = "src/NUnitFramework/tests/TestText1.txt",
    identifier = "NUnit.Framework.TestText1.txt",
)

core_resource(
    name = "resource4",
    src = "src/NUnitFramework/tests/TestText2.txt",
    identifier = "NUnit.Framework.TestText2.txt",
)

core_resource(
    name = "resource5",
    src = "src/NUnitFramework/tests/TestListFile.txt",
    identifier = "NUnit.Framework.TestListFile.txt",
)

core_resource(
    name = "resource6",
    src = "src/NUnitFramework/tests/TestListFile2.txt",
    identifier = "NUnit.Framework.TestListFile2.txt",
)

core_nunit3_test(
    name = "nunit.framework.tests.dll",
    srcs = glob(
        [
            "src/NUnitFramework/tests/**/*.cs",
            "src/NUnitFramework/*.cs",
        ],
        exclude = ["**/RuntimeFrameworkTests.cs"],
    ) + ["src/CommonAssemblyInfo.cs"],
    data_with_dirs = {
        "@vstest.16.5//:Microsoft.TestPlatform.TestHostRuntimeProvider.dll": "Extensions",
        "@nunit3-vs-adapter.3.16.1//:NUnitTestAdapter.TestAdapter.dll": "Extensions",
        ":schemas": "Schemas",
        "@junit.testlogger//:extension": "Extensions",
    },
    defines = COMMON_DEFINES,
    keyfile = "src/nunit.snk",
    resources = [
        ":resource1",
        ":resource2",
        ":resource3",
        ":resource4",
        ":resource5",
        ":resource6",
    ],
    testlauncher = "@vstest.16.5//:vstest.console.exe",
    visibility = ["//visibility:public"],
    deps = [
        ":mock-assembly.dll",
        ":nunit.framework.dll",
        ":nunit.testdata.dll",
        ":slow-nunit-tests.dll",
        "@nunit3-vs-adapter.3.16.1//:NUnitTestAdapter.TestAdapter.dll",
    ],
)
