exports_files(["TypeNameFormatter/typenameformatter.snk"])

filegroup(
    name = "all.build",
    srcs = [
        "@//ifluentinterface:IFluentInterface.dll",
        "@TypeNameFormatter//:TypeNameFormatter.dll",
        "@castle.core//:Castle.Core.dll",
        "@moq4//:Moq.dll",
        "@xunit_abstractions//:abstractions.xunit.dll",
        "@xunit_assert//:assert.xunit.dll",
    ],
)

filegroup(
    name = "all.test",
    testonly = True,
    srcs = [
        "@moq4//:Moq.Tests.dll",
    ],
)
