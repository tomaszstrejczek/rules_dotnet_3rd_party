load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resource")

filegroup(
    name = "core_common",
    srcs = [
        ":src/common/ExceptionExtensions.cs",
        ":src/common/Guard.cs",
        ":src/common/TestMethodDisplay.cs",
        ":src/common/TestMethodDisplayOptions.cs",
    ] + ["@xunit_assert//:common_files"],
)

core_resource(
    name = "xunit_core_resource",
    src = "src/xunit.core/Resources/xunit.core.rd.xml",
    identifier = "Xunit.Resources.xunit.core.rd.xml",
)

core_library(
    name = "xunit.core.dll",
    srcs = [":core_common"] + glob(["src/xunit.core/**/*.cs"]),
    data = [
        ":src/xunit.core/xunit.core.dll.tdnet",
    ],
    defines = [
        "XUNIT_FRAMEWORK",
    ],
    resources = [":xunit_core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
        "@xunit_abstractions//:abstractions.xunit.dll",
    ],
)

filegroup(
    name = "execution_common",
    srcs = [
        ":src/common/AssemblyExtensions.cs",
        ":src/common/CommonTasks.cs",
        ":src/common/DictionaryExtensions.cs",
        ":src/common/ExceptionExtensions.cs",
        ":src/common/ExceptionUtility.cs",
        ":src/common/ExecutionHelper.cs",
        ":src/common/Guard.cs",
        ":src/common/LongLivedMarshalByRefObject.cs",
        ":src/common/NewReflectionExtensions.cs",
        ":src/common/NullMessageSink.cs",
        ":src/common/SerializationHelper.cs",
        ":src/common/SourceInformation.cs",
        ":src/common/TestOptionsNames.cs",
        ":src/common/XunitSerializationInfo.cs",
        ":src/common/XunitWorkerThread.cs",
    ] + glob(["src/messages/**/*.cs"]) + ["@xunit_assert//:common_files"],
)

core_library(
    name = "xunit.execution.dll",
    srcs = [":execution_common"] + glob(["src/xunit.execution/**/*.cs"]),
    defines = [
        "XUNIT_FRAMEWORK",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":xunit.core.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)

filegroup(
    name = "runner_utility_common",
    srcs = [
        ":src/common/AssemblyExtensions.cs",
        ":src/common/CommonTasks.cs",
        ":src/common/ConcurrentDictionary.cs",
        ":src/common/ConsoleHelper.cs",
        ":src/common/DictionaryExtensions.cs",
        ":src/common/ExceptionExtensions.cs",
        ":src/common/ExceptionUtility.cs",
        ":src/common/Guard.cs",
        ":src/common/Json.cs",
        ":src/common/LongLivedMarshalByRefObject.cs",
        ":src/common/NewReflectionExtensions.cs",
        ":src/common/NullMessageSink.cs",
        ":src/common/SerializationHelper.cs",
        ":src/common/SourceInformation.cs",
        ":src/common/TestMethodDisplay.cs",
        ":src/common/TestMethodDisplayOptions.cs",
        ":src/common/TestOptionsNames.cs",
        ":src/common/XunitSerializationInfo.cs",
        ":src/common/XunitWorkerThread.cs",
        ":src/common/AssemblyResolution/AssemblyHelper_Desktop.cs",
        ":src/common/AssemblyResolution/_DiagnosticMessage.cs",
    ] + glob(["src/messages/**/*.cs"]),
)

core_library(
    name = "xunit.runner.utility.dll",
    srcs = [":runner_utility_common"] + glob(["src/xunit.runner.utility/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
        "NETCOREAPP",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
        "@xunit_abstractions//:abstractions.xunit.dll",
    ],
)

filegroup(
    name = "runner_reporters_common",
    srcs = [
        ":src/common/Json.cs",
        ":src/common/XunitWorkerThread.cs",
    ],
)

core_library(
    name = "xunit.runner.reporters.dll",
    srcs = [":runner_reporters_common"] + glob(["src/xunit.runner.reporters/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":xunit.runner.utility.dll",
        "@core_sdk_stdlib//:libraryset",
        "@xunit_abstractions//:abstractions.xunit.dll",
    ],
)

filegroup(
    name = "console_common",
    srcs = [
        ":src/common/AssemblyExtensions.cs",
        ":src/common/ConsoleHelper.cs",
        ":src/common/DictionaryExtensions.cs",
        ":src/common/Guard.cs",
        ":src/common/Json.cs",
    ] + glob(["src/common/AssemblyResolution/**/*.cs"]),
)

core_resource(
    name = "HTML_xslt",
    src = "src/xunit.console/HTML.xslt",
    identifier = "Xunit.ConsoleClient.HTML.xslt",
)

core_resource(
    name = "NUnitXml_xslt",
    src = "src/xunit.console/NUnitXml.xslt",
    identifier = "Xunit.ConsoleClient.NUnitXml.xslt",
)

core_resource(
    name = "xUnit1_xslt",
    src = "src/xunit.console/xUnit1.xslt",
    identifier = "Xunit.ConsoleClient.xUnit1.xslt",
)

core_resource(
    name = "JUnitXml_xslt",
    src = "src/xunit.console/JUnitXml.xslt",
    identifier = "Xunit.ConsoleClient.JUnitXml.xslt",
)

core_library(
    name = "xunit.console.dll",
    srcs = [":console_common"] + glob(["src/xunit.console/**/*.cs"]),
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
        ":src/common/AssemblyExtensions.cs",
        ":src/common/DictionaryExtensions.cs",
        ":src/common/ExceptionExtensions.cs",
        ":src/common/ExecutionHelper.cs",
        ":src/common/TestOptionsNames.cs",
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
#         "@core_sdk_stdlib//:libraryset",
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
#        "@core_sdk_stdlib//:libraryset",
#        "@xunit_abstractions//:abstractions.xunit",
#        "@xunit_assert//:assert.xunit",
#        ":xunit.core",
#        ":xunit.test.utility",
#    ],
#    testlauncher=":xunit.console"
#)
