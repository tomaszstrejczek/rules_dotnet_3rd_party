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
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
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
        "@xunit.assert//:core",
        "@xunit.extensibility.core//:core",
        "@xunit.extensibility.execution//:core",
    ],
)
