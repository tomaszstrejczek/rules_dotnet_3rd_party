load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resx", "core_vstest_test")

core_library(
    name = "AlexKosau.BuildTools.JUnitLogger",
    srcs = glob(["vstest-junit-logger/AlexKosau.BuildTools.JUnitLogger/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel",
        "//testfx:MSTest.Core",
    ],
    keyfile = ":vstest-junit-logger.snk",
)
