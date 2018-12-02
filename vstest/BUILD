load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_binary", "core_resx", "core_vstest_test")

core_library(
    name = "Microsoft.TestPlatform.PlatformAbstractions",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.PlatformAbstractions/Interfaces/**/*.cs"]) + 
           glob(["vstest/src/Microsoft.TestPlatform.PlatformAbstractions/netcore/**/*.cs"]) + 
           glob(["vstest/src/Microsoft.TestPlatform.PlatformAbstractions/common/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "coreutilities_resource",
    src = "vstest/src/Microsoft.TestPlatform.CoreUtilities/Resources/Resources.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.CoreUtilities.Resources.Resources.resources",
)

core_library(
    name = "Microsoft.TestPlatform.CoreUtilities",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.CoreUtilities/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "NETSTANDARD1_4",
        "TRACE",
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.console.dll",
        ":Microsoft.TestPlatform.PlatformAbstractions",
    ],
    resources = [
        ":coreutilities_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "objectmodel_resource1",
    src = "vstest/src/Microsoft.TestPlatform.ObjectModel/Resources/Resources.resx",
    identifier="Microsoft.TestPlatform.ObjectModel.Resources.Resources.resources",
)

core_resx(
    name = "objectmodel_resource2",
    src = "vstest/src/Microsoft.TestPlatform.ObjectModel/Resources/CommonResources.resx",
    identifier="Microsoft.TestPlatform.ObjectModel.Resources.CommonResources.resx",
)

core_library(
    name = "Microsoft.VisualStudio.TestPlatform.ObjectModel",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.ObjectModel/**/*.cs"], exclude=["**/Friends.cs"]) + [":Friends.cs"],
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.primitives.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xpath.xmldocument.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xpath.xdocument.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xpath.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xmldocument.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.componentmodel.eventbasedasync.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.componentmodel.typeconverter.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.reflection.metadata.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.serialization.json.dll",
        ":Microsoft.TestPlatform.CoreUtilities",
    ],
    resources = [
        ":objectmodel_resource1",
        ":objectmodel_resource2",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "utilities_resource",
    src = "vstest/src/Microsoft.TestPlatform.Utilities/Resources/Resources.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.Utilities.Resources.Resources.resources",
)

core_library(
    name = "Microsoft.TestPlatform.Utilities",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.Utilities/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.TestPlatform.CoreUtilities",
        ":Microsoft.VisualStudio.TestPlatform.ObjectModel",
    ],
    resources = [
        ":utilities_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "common_resource",
    src = "vstest/src/Microsoft.TestPlatform.Common/Resources/Resources.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.Common.Resources.Resources.resources",
)

core_library(
    name = "Microsoft.VisualStudio.TestPlatform.Common",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.Common/**/*.cs"], exclude=["**/Friends.cs"]) + [":Common_Friends.cs"],
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.TestPlatform.CoreUtilities",
        ":Microsoft.VisualStudio.TestPlatform.ObjectModel",
        ":Microsoft.TestPlatform.Utilities",
    ],
    resources = [
        ":common_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "communicationutilities_resource",
    src = "vstest/src/Microsoft.TestPlatform.CommunicationUtilities/Resources/Resources.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.CommunicationUtilities.Resources.resources",
)

core_library(
    name = "Microsoft.TestPlatform.CommunicationUtilities",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.CommunicationUtilities/**/*.cs"], exclude=["**/Friends.cs"]) + [":CommunicationUtilities_Friends.cs"],
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.TestPlatform.CoreUtilities",
        ":Microsoft.VisualStudio.TestPlatform.ObjectModel",
        ":Microsoft.VisualStudio.TestPlatform.Common",
        "//newtonsoft.json:newtonsoft.json",
    ],
    resources = [
        ":communicationutilities_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "crossplatengine_resource",
    src = "vstest/src/Microsoft.TestPlatform.CrossPlatEngine/Resources/Resources.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.CrossPlatEngine.Resources.resources",
)

core_library(
    name = "Microsoft.TestPlatform.CrossPlatEngine",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.CrossPlatEngine/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.TestPlatform.CoreUtilities",
        ":Microsoft.VisualStudio.TestPlatform.ObjectModel",
        ":Microsoft.VisualStudio.TestPlatform.Common",
        ":Microsoft.TestPlatform.CommunicationUtilities",
    ],
    resources = [
        ":crossplatengine_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "client_resource",
    src = "vstest/src/Microsoft.TestPlatform.Client/Resources/Resources.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.Client.Resources.Resources.resources",
)

core_library(
    name = "Microsoft.VisualStudio.TestPlatform.Client",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.Client/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.TestPlatform.CrossPlatEngine",
    ],
    resources = [
        ":client_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "console_resource",
    src = "vstest/src/vstest.console/Resources/Resources.resx",
    identifier="vstest.console.Resources.Resources.resources",
)

core_binary(
    name = "vstest.console",
    srcs = glob(["vstest/src/vstest.console/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.VisualStudio.TestPlatform.Client",
        ":Microsoft.TestPlatform.Extensions.TrxLogger",
    ],
    resources = [
        ":console_resource",
    ],
    keyfile = ":vstest.snk",
)

core_resx(
    name = "trxlogger_resource",
    src = "vstest/src/Microsoft.TestPlatform.Extensions.TrxLogger/Resources/TrxResource.resx",
    identifier="Microsoft.VisualStudio.TestPlatform.Extensions.TrxLogger.Resources.TrxResource.resources",
)

core_library(
    name = "Microsoft.TestPlatform.Extensions.TrxLogger",
    srcs = glob(["vstest/src/Microsoft.TestPlatform.Extensions.TrxLogger/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.VisualStudio.TestPlatform.ObjectModel",
    ],
    resources = [
        ":trxlogger_resource",
    ],
    keyfile = ":vstest.snk",
)

core_vstest_test(
    name = "Microsoft.TestPlatform.CoreUtilities.UnitTests",
    srcs = glob(["vstest/test/Microsoft.TestPlatform.CoreUtilities.UnitTests/**/*.cs"]),
    visibility = ["//visibility:public"],
    defines = [
        "TRACE",
    ],
    deps = [
        ":Microsoft.TestPlatform.CoreUtilities",
        "//testfx:MSTest.Core",
        "//moq4:Moq",
    ],
    testlauncher = ":vstest.console",
    keyfile = ":vstest.snk",
)
