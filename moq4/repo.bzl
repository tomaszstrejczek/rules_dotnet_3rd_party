load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resx", "core_xunit_test")

core_resx(
    name = "core_resource",
    src = ":src/Moq/Properties/Resources.resx",
    identifier = "Moq.Properties.Resources.resources",
)

core_library(
    name = "Moq.dll",
    srcs = glob(["src/Moq/**/*.cs"]),
    defines = [
        "NETCORE",
    ],
    keyfile = ":Moq.snk",
    resources = [":core_resource"],
    visibility = ["//visibility:public"],
    nowarn = ["CS3027"],
    deps = [
        "@//ifluentinterface:IFluentInterface.dll",
        "@TypeNameFormatter//:TypeNameFormatter.dll",
        "@castle.core//:Castle.Core.dll",
        "@core_sdk_stdlib//:libraryset",
    ],
)

core_xunit_test(
    name = "Moq.Tests.dll",
    srcs = glob(
        ["tests/Moq.Tests/**/*.cs"],
        exclude = ["**/FSharpCompatibilityFixture.cs"],
    ),
    defines = [
        "NETCORE",
    ],
    keyfile = ":Moq.snk",
    nowarn = ["CS1701"],
    visibility = ["//visibility:public"],
    deps = [
        ":Moq.dll",
        "@xunit.assert//:lib",
        "@xunit.extensibility.core//:lib",
        "@xunit.extensibility.execution//:lib",
    ],
)
