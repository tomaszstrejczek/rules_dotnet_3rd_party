load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_libraryset", "core_xunit_test")

core_libraryset(
    name = "nunit3.vstest",
    deps = [
        ":NUnitTestAdapter.TestAdapter.dll",
        ":empty-assembly.dll",
        ":mock-assembly.dll",
        "@vstest.16.5//:vstest.console.exe",
    ],
    visibility = ["//visibility:public"],
)

core_library(
    name = "NUnitTestAdapter.TestAdapter.dll",
    srcs = glob(["src/NUnitTestAdapter/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = "src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
        "@nunit-console.3.11.1//:engine.dll",
        "@vstest.16.5//:Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
    ],
)

core_library(
    name = "empty-assembly.dll",
    srcs = glob(["src/empty-assembly/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = "src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "//nunit:nunit.framework.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)

core_library(
    name = "mock-assembly.dll",
    srcs = glob(["src/mock-assembly/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = "src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "//nunit:nunit.framework.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)

core_xunit_test(
    name = "adapterexternaltests.dll",
    srcs = glob(["src/NUnit3AdapterExternalTests/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = "src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit3.vstest",
        "//nunit:nunit.framework.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)

# # core_library(
# #     name = "adaptertests",
# #     srcs = glob(["src/NUnitTestAdapterTests/**/*.cs"]),
# #     visibility = ["//visibility:public"],
# #     defines = [
# #         "NETCOREAPP1_0",
# #         "SERIALIZATION",
# #         "ASYNC",
# #         "PLATFORM_DETECTION",
# #         "PARALLEL",
# #     ],
# #     deps = [
# #        "@core_sdk_stdlib//:libraryset",
# #         "//nunit:nunit.framework",
# #         "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel",
# #     ],
# #     keyfile = "src/NUnitAdapter.snk",
# # )

core_xunit_test(
    name = "simple.dll",
    srcs = glob(["nunit3-vs-adapter/tests/Simple/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":nunit3.vstest",
        "//nunit:nunit.framework.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)
