load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_libraryset", "core_xunit_test")

core_libraryset(
    name = "nunit3.vstest",
    deps = [
        ":NUnitTestAdapter.TestAdapter.dll",
        ":empty-assembly.dll",
        ":mock-assembly.dll",
        "//vstest:vstest.console.exe",
    ],
)

core_library(
    name = "NUnitTestAdapter.TestAdapter.dll",
    srcs = glob(["nunit3-vs-adapter/src/NUnitTestAdapter/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit3-vs-adapter/src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "//nunit-console:engine.dll",
        "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_library(
    name = "empty-assembly.dll",
    srcs = glob(["nunit3-vs-adapter/src/empty-assembly/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit3-vs-adapter/src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "//nunit:nunit.framework.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_library(
    name = "mock-assembly.dll",
    srcs = glob(["nunit3-vs-adapter/src/mock-assembly/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit3-vs-adapter/src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        "//nunit:nunit.framework.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_xunit_test(
    name = "adapterexternaltests.dll",
    srcs = glob(["nunit3-vs-adapter/src/NUnit3AdapterExternalTests/**/*.cs"]),
    defines = [
        "NETCOREAPP1_0",
        "SERIALIZATION",
        "ASYNC",
        "PLATFORM_DETECTION",
        "PARALLEL",
    ],
    keyfile = ":nunit3-vs-adapter/src/NUnitAdapter.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":nunit3.vstest",
        "//nunit:nunit.framework.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

# # core_library(
# #     name = "adaptertests",
# #     srcs = glob(["nunit3-vs-adapter/src/NUnitTestAdapterTests/**/*.cs"]),
# #     visibility = ["//visibility:public"],
# #     defines = [
# #         "NETCOREAPP1_0",
# #         "SERIALIZATION",
# #         "ASYNC",
# #         "PLATFORM_DETECTION",
# #         "PARALLEL",
# #     ],
# #     deps = [
# #        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
# #         "//nunit:nunit.framework",
# #         "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel",
# #     ],
# #     keyfile = ":nunit3-vs-adapter/src/NUnitAdapter.snk",
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
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)
