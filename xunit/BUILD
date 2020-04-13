load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resource")

filegroup(
    name = "core_common",
    srcs = [
        ":xunit/src/common/ExceptionExtensions.cs",
        ":xunit/src/common/Guard.cs",
        ":xunit/src/common/TestMethodDisplay.cs",
        ":xunit/src/common/TestMethodDisplayOptions.cs",
    ] + ["@xunit_assert//:common_files"],
)

core_resource(
    name = "xunit_core_resource",
    src = "xunit/src/xunit.core/Resources/xunit.core.rd.xml",
    identifier = "Xunit.Resources.xunit.core.rd.xml",
)

core_library(
    name = "xunit.core.dll",
    srcs = [":core_common"] + glob(["xunit/src/xunit.core/**/*.cs"]),
    data = [
        ":xunit/src/xunit.core/xunit.core.dll.tdnet",
    ],
    defines = [
        "XUNIT_FRAMEWORK",
    ],
    resources = [":xunit_core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@xunit_abstractions//:abstractions.xunit.dll",
    ],
)

filegroup(
    name = "execution_common",
    srcs = [
        ":xunit/src/common/AssemblyExtensions.cs",
        ":xunit/src/common/CommonTasks.cs",
        ":xunit/src/common/DictionaryExtensions.cs",
        ":xunit/src/common/ExceptionExtensions.cs",
        ":xunit/src/common/ExceptionUtility.cs",
        ":xunit/src/common/ExecutionHelper.cs",
        ":xunit/src/common/Guard.cs",
        ":xunit/src/common/LongLivedMarshalByRefObject.cs",
        ":xunit/src/common/NewReflectionExtensions.cs",
        ":xunit/src/common/NullMessageSink.cs",
        ":xunit/src/common/SerializationHelper.cs",
        ":xunit/src/common/SourceInformation.cs",
        ":xunit/src/common/TestOptionsNames.cs",
        ":xunit/src/common/XunitSerializationInfo.cs",
        ":xunit/src/common/XunitWorkerThread.cs",
    ] + glob(["xunit/src/messages/**/*.cs"]) + ["@xunit_assert//:common_files"],
)

core_library(
    name = "xunit.execution.dll",
    srcs = [":execution_common"] + glob(["xunit/src/xunit.execution/**/*.cs"]),
    defines = [
        "XUNIT_FRAMEWORK",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":xunit.core.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

filegroup(
    name = "runner_utility_common",
    srcs = [
        ":xunit/src/common/AssemblyExtensions.cs",
        ":xunit/src/common/CommonTasks.cs",
        ":xunit/src/common/ConcurrentDictionary.cs",
        ":xunit/src/common/ConsoleHelper.cs",
        ":xunit/src/common/DictionaryExtensions.cs",
        ":xunit/src/common/ExceptionExtensions.cs",
        ":xunit/src/common/ExceptionUtility.cs",
        ":xunit/src/common/Guard.cs",
        ":xunit/src/common/Json.cs",
        ":xunit/src/common/LongLivedMarshalByRefObject.cs",
        ":xunit/src/common/NewReflectionExtensions.cs",
        ":xunit/src/common/NullMessageSink.cs",
        ":xunit/src/common/SerializationHelper.cs",
        ":xunit/src/common/SourceInformation.cs",
        ":xunit/src/common/TestMethodDisplay.cs",
        ":xunit/src/common/TestMethodDisplayOptions.cs",
        ":xunit/src/common/TestOptionsNames.cs",
        ":xunit/src/common/XunitSerializationInfo.cs",
        ":xunit/src/common/XunitWorkerThread.cs",
        ":xunit/src/common/AssemblyResolution/AssemblyHelper_Desktop.cs",
        ":xunit/src/common/AssemblyResolution/_DiagnosticMessage.cs",
    ] + glob(["xunit/src/messages/**/*.cs"]),
)

core_library(
    name = "xunit.runner.utility.dll",
    srcs = [":runner_utility_common"] + glob(["xunit/src/xunit.runner.utility/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
        "NETCOREAPP",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@xunit_abstractions//:abstractions.xunit.dll",
    ],
)

filegroup(
    name = "runner_reporters_common",
    srcs = [
        ":xunit/src/common/Json.cs",
        ":xunit/src/common/XunitWorkerThread.cs",
    ],
)

core_library(
    name = "xunit.runner.reporters.dll",
    srcs = [":runner_reporters_common"] + glob(["xunit/src/xunit.runner.reporters/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":xunit.runner.utility.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@xunit_abstractions//:abstractions.xunit.dll",
    ],
)

filegroup(
    name = "console_common",
    srcs = [
        ":xunit/src/common/AssemblyExtensions.cs",
        ":xunit/src/common/ConsoleHelper.cs",
        ":xunit/src/common/DictionaryExtensions.cs",
        ":xunit/src/common/Guard.cs",
        ":xunit/src/common/Json.cs",
    ] + glob(["xunit/src/common/AssemblyResolution/**/*.cs"]),
)

core_resource(
    name = "HTML_xslt",
    src = "xunit/src/xunit.console/HTML.xslt",
    identifier = "Xunit.ConsoleClient.HTML.xslt",
)

core_resource(
    name = "NUnitXml_xslt",
    src = "xunit/src/xunit.console/NUnitXml.xslt",
    identifier = "Xunit.ConsoleClient.NUnitXml.xslt",
)

core_resource(
    name = "xUnit1_xslt",
    src = "xunit/src/xunit.console/xUnit1.xslt",
    identifier = "Xunit.ConsoleClient.xUnit1.xslt",
)

core_resource(
    name = "JUnitXml_xslt",
    src = "xunit/src/xunit.console/JUnitXml.xslt",
    identifier = "Xunit.ConsoleClient.JUnitXml.xslt",
)

core_library(
    name = "xunit.console.dll",
    srcs = [":console_common"] + glob(["xunit/src/xunit.console/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
        "NETCOREAPP",
        "NETCOREAPP2_0",
    ],
    resources = [
        ":HTML_xslt",
        ":JUnitXml_xslt",
        ":NUnitXml_xslt",
        ":xUnit1_xslt",
    ],
    unsafe = True,
    visibility = ["//visibility:public"],
    deps = [
        ":xunit.runner.reporters.dll",
    ],
)

filegroup(
    name = "test_utility_common",
    srcs = [
        ":xunit/src/common/AssemblyExtensions.cs",
        ":xunit/src/common/DictionaryExtensions.cs",
        ":xunit/src/common/ExceptionExtensions.cs",
        ":xunit/src/common/ExecutionHelper.cs",
        ":xunit/src/common/TestOptionsNames.cs",
    ],
)

# core_library(
#     name = "xunit.test.utility.dll",
#     srcs = [":test_utility_common"] + glob(["xunit/test/test.utility/**/*.cs"]),
#     defines = [
#         "NETSTANDARD2_0",
#         "NETSTANDARD",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":xunit.core.dll",
#         "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#         "@xunit_abstractions//:abstractions.xunit.dll",
#     ],
# )

#core_xunit_test(
#    name = "test.xunit.assert",
#    srcs = ["@xunit_assert//:test_files"] + glob(["xunit/test/test.xunit.assert/**/*.cs"]),
#    defines = [
#        "XUNIT_FRAMEWORK",
#    ],
#    visibility = ["//visibility:public"],
#    deps = [
#        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#        "@xunit_abstractions//:abstractions.xunit",
#        "@xunit_assert//:assert.xunit",
#        ":xunit.core",
#        ":xunit.test.utility",
#    ],
#    testlauncher=":xunit.console"
#)
