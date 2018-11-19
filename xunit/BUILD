load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resource", "core_xunit_test")

filegroup(
  name = "core_common",
  srcs = [
    ":xunit/src/common/ExceptionExtensions.cs",
    ":xunit/src/common/Guard.cs",
    ":xunit/src/common/TestMethodDisplay.cs",
    ":xunit/src/common/TestMethodDisplayOptions.cs"
  ] + ["@xunit_assert//:common_files"]
)

core_resource(
    name = "core_resource",
    src = "xunit/src/xunit.core/Resources/xunit.core.rd.xml",
)

core_library(
    name = "xunit.core",
    srcs = [":core_common"] + glob(["xunit/src/xunit.core/**/*.cs"]),
    defines = [
        "XUNIT_FRAMEWORK",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.filesystem.dll",
        "@xunit_abstractions//:abstractions.xunit",
    ],
    resources = [":core_resource"],
    data = [
        ":xunit/src/xunit.core/xunit.core.dll.tdnet"
    ]
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
  ] + glob(["xunit/src/messages/**/*.cs"]) + ["@xunit_assert//:common_files"]
)

core_library(
    name = "xunit.execution",
    srcs = [":execution_common"] + glob(["xunit/src/xunit.execution/**/*.cs"]),
    defines = [
        "XUNIT_FRAMEWORK",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.expressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.filesystem.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.collections.concurrent.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.threading.thread.dll",
        ":xunit.core",
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
  ] + glob(["xunit/src/messages/**/*.cs"])
)

core_library(
    name = "xunit.runner.utility",
    srcs = [":runner_utility_common"] + glob(["xunit/src/xunit.runner.utility/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.expressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.filesystem.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.collections.concurrent.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.threading.thread.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.text.regularexpressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xdocument.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@xunit_abstractions//:abstractions.xunit",
  ],
)


filegroup(
  name = "runner_reporters_common",
  srcs = [
    ":xunit/src/common/Json.cs",
    ":xunit/src/common/XunitWorkerThread.cs",
  ]
)

core_library(
    name = "xunit.runner.reporters",
    srcs = [":runner_reporters_common"] + glob(["xunit/src/xunit.runner.reporters/**/*.cs"]),
    defines = [
        "NETSTANDARD2_0",
        "NETSTANDARD",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.expressions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.filesystem.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.collections.concurrent.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.threading.thread.dll",
        "@xunit_abstractions//:abstractions.xunit",
        ":xunit.runner.utility",
  ],
)


#core_xunit_test(
#    name = "test.xunit.assert",
#    srcs = ["@xunit_assert//:test_files"] + glob(["xunit/test/test.xunit.assert/**/*.cs"]),
#    defines = [
#        "XUNIT_FRAMEWORK",
#    ],
#    visibility = ["//visibility:public"],
#    deps = [
#        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
#        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
#        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
#        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.filesystem.dll",
#        "@xunit_abstractions//:abstractions.xunit",
#    ],
#)