exports_files(["TypeNameFormatter/typenameformatter.snk"])

filegroup(
    name = "all.build",
    srcs = [
        "@//ifluentinterface:IFluentInterface.dll",
        "@TypeNameFormatter//:TypeNameFormatter.dll",
        "@castle.core//:Castle.Core.dll",
        "@junit.testlogger//:Microsoft.VisualStudio.TestPlatform.Extension.JUnit.Xml.TestAdapter.dll",
        "@junit.testlogger//:Microsoft.VisualStudio.TestPlatform.Extension.JUnit.Xml.TestLogger.dll",
        "@mono-cecil//:cecil.dll",
        "@moq4//:Moq.dll",
        "@newtonsoft.json.12//:newtonsoft.json.dll",
        "@nuget.netstandard//:NuGet.PackageManagement.dll",
        "@nunit.3.12//:nunit.framework.dll",
        "@nunit-console.3.11.1//:engine.dll",
        "@nunit3-vs-adapter.3.16.1//:NUnitTestAdapter.TestAdapter.dll",
        "@vstest.16.5//:vstest.console.exe",
        "@xunit.2.4.1//:xunit.console.dll",
        "@xunit.2.4.1//:xunit.core.dll",
        "@xunit_abstractions//:abstractions.xunit.dll",
        "@xunit_assert//:assert.xunit.dll",
    ],
)

filegroup(
    name = "all.test",
    testonly = True,
    srcs = [
        "@moq4//:Moq.Tests.dll",
        "@nunit.3.12//:nunit.framework.tests.dll",
    ],
)
