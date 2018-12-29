load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resx")

core_library(
    name = "AlexKosau.BuildTools.JUnitLogger",
    srcs = glob(["vstest-junit-logger/AlexKosau.BuildTools.JUnitLogger/**/*.cs"]),
    defines = [
        "TRACE",
    ],
    keyfile = ":vstest-junit-logger.snk",
    visibility = ["//visibility:public"],
    deps = [
        "//testfx:MSTest.Core",
        "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel",
    ],
)
