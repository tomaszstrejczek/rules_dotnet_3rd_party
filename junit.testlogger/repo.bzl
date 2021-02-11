load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library")

filegroup(
    name = "extension",
    srcs = [
        ":Microsoft.VisualStudio.TestPlatform.Extension.JUnit.Xml.TestLogger.dll",
        ":Microsoft.VisualStudio.TestPlatform.Extension.JUnit.Xml.TestAdapter.dll",
    ],
    visibility = ["//visibility:public"],
)

core_library(
    name = "Microsoft.VisualStudio.TestPlatform.Extension.JUnit.Xml.TestLogger.dll",
    srcs = glob(["src/JUnit.Xml.TestLogger/*.cs"]),
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
        "@vstest.16.5//:Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
    ],
)

core_library(
    name = "Microsoft.VisualStudio.TestPlatform.Extension.JUnit.Xml.TestAdapter.dll",
    srcs = [
        "src/JUnit.Xml.TestLogger/JUnitXmlTestLogger.cs",
        "src/JUnit.Xml.TestLogger/StringExtensions.cs",
        "src/JUnit.Xml.TestLogger/TestCaseNameParser.cs",
        "src/JUnit.Xml.TestLogger/TestResultInfo.cs",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@core_sdk_stdlib//:libraryset",
        "@vstest.16.5//:Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
    ],
)
