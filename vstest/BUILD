# # Source version v16.5.0
# load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resx")

# core_library(
#     name = "Microsoft.TestPlatform.PlatformAbstractions.dll",
#     srcs = glob(["vstest/src/Microsoft.TestPlatform.PlatformAbstractions/Interfaces/**/*.cs"]) + glob([
#         "vstest/src/Microsoft.TestPlatform.PlatformAbstractions/netcore/**/*.cs",
#     ]) + glob([
#         "vstest/src/Microsoft.TestPlatform.PlatformAbstractions/common/**/*.cs",
#     ]),
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     visibility = ["//visibility:public"],
#     deps = [
#         "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#     ],
# )

# core_resx(
#     name = "coreutilities_resource",
#     src = "vstest/src/Microsoft.TestPlatform.CoreUtilities/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.CoreUtilities.Resources.Resources.resources",
# )

# core_library(
#     name = "Microsoft.TestPlatform.CoreUtilities.dll",
#     srcs = glob(["vstest/src/Microsoft.TestPlatform.CoreUtilities/**/*.cs"]),
#     defines = [
#         "NETSTANDARD1_4",
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":coreutilities_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.PlatformAbstractions.dll",
#         "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#     ],
# )

# core_resx(
#     name = "objectmodel_resource1",
#     src = "vstest/src/Microsoft.TestPlatform.ObjectModel/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.ObjectModel.Resources.Resources.resources",
# )

# core_resx(
#     name = "objectmodel_resource2",
#     src = "vstest/src/Microsoft.TestPlatform.ObjectModel/Resources/CommonResources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.ObjectModel.Resources.CommonResources.resx",
# )

# core_library(
#     name = "Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#     srcs = glob(
#         ["vstest/src/Microsoft.TestPlatform.ObjectModel/**/*.cs"],
#         exclude = ["**/Friends.cs"],
#     ) + [":ObjectModel_Friends.cs"],
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":objectmodel_resource1",
#         ":objectmodel_resource2",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CoreUtilities.dll",
#         ":Microsoft.TestPlatform.PlatformAbstractions.dll",
#         "//nuget.netstandard:NuGet.Frameworks.dll",
#         "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#     ],
# )

# core_resx(
#     name = "utilities_resource",
#     src = "vstest/src/Microsoft.TestPlatform.Utilities/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.Utilities.Resources.Resources.resources",
# )

# core_library(
#     name = "Microsoft.TestPlatform.Utilities.dll",
#     srcs = glob(["vstest/src/Microsoft.TestPlatform.Utilities/**/*.cs"]),
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":utilities_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CoreUtilities.dll",
#         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#     ],
# )

# core_resx(
#     name = "common_resource",
#     src = "vstest/src/Microsoft.TestPlatform.Common/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.Common.Resources.Resources.resources",
# )

# core_library(
#     name = "Microsoft.VisualStudio.TestPlatform.Common.dll",
#     srcs = glob(
#         ["vstest/src/Microsoft.TestPlatform.Common/**/*.cs"],
#         exclude = ["**/Friends.cs"],
#     ) + [":Common_Friends.cs"],
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":common_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CoreUtilities.dll",
#         ":Microsoft.TestPlatform.Utilities.dll",
#         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#     ],
# )

# core_resx(
#     name = "communicationutilities_resource",
#     src = "vstest/src/Microsoft.TestPlatform.CommunicationUtilities/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.CommunicationUtilities.Resources.resources",
# )

# core_library(
#     name = "Microsoft.TestPlatform.CommunicationUtilities.dll",
#     srcs = glob(
#         ["vstest/src/Microsoft.TestPlatform.CommunicationUtilities/**/*.cs"],
#         exclude = ["**/Friends.cs"],
#     ) + [":CommunicationUtilities_Friends.cs"],
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":communicationutilities_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CoreUtilities.dll",
#         ":Microsoft.VisualStudio.TestPlatform.Common.dll",
#         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#         "//newtonsoft.json:newtonsoft.json.dll",
#     ],
# )

# core_resx(
#     name = "crossplatengine_resource",
#     src = "vstest/src/Microsoft.TestPlatform.CrossPlatEngine/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.CrossPlatEngine.Resources.Resources.resources",
# )

# core_library(
#     name = "Microsoft.TestPlatform.CrossPlatEngine.dll",
#     srcs = glob(["vstest/src/Microsoft.TestPlatform.CrossPlatEngine/**/*.cs"]),
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":crossplatengine_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CommunicationUtilities.dll",
#         ":Microsoft.TestPlatform.CoreUtilities.dll",
#         ":Microsoft.VisualStudio.TestPlatform.Common.dll",
#         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#     ],
# )

# core_resx(
#     name = "client_resource",
#     src = "vstest/src/Microsoft.TestPlatform.Client/Resources/Resources.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.Client.Resources.Resources.resources",
# )

# core_library(
#     name = "Microsoft.VisualStudio.TestPlatform.Client.dll",
#     srcs = glob(["vstest/src/Microsoft.TestPlatform.Client/**/*.cs"]),
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":client_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CrossPlatEngine.dll",
#     ],
# )

# core_resx(
#     name = "console_resource",
#     src = "vstest/src/vstest.console/Resources/Resources.resx",
#     identifier = "vstest.console.Resources.Resources.resources",
# )

# core_binary(
#     name = "vstest.console.exe",
#     srcs = glob(["vstest/src/vstest.console/**/*.cs"]),
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":console_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         #":Microsoft.TestPlatform.Extensions.TrxLogger.dll",
#         ":Microsoft.TestPlatform.TestHostProvider.dll",
#         ":Microsoft.VisualStudio.TestPlatform.Client.dll",
#         ":testhost.dll",
#         "//nunit3-vs-adapter:NUnitTestAdapter.TestAdapter.dll",
#         "//testfx:Microsoft.VisualStudio.TestPlatform.MSTest.TestAdapter.dll",
#         "//vstest-junit-logger:AlexKosau.BuildTools.JUnitLogger.dll",
#     ],
# )

# core_resx(
#     name = "trxlogger_resource",
#     src = "vstest/src/Microsoft.TestPlatform.Extensions.TrxLogger/Resources/TrxResource.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.Extensions.TrxLogger.Resources.TrxResource.resources",
# )

# # core_library(
# #     name = "Microsoft.TestPlatform.Extensions.TrxLogger.dll",
# #     srcs = glob(["vstest/src/Microsoft.TestPlatform.Extensions.TrxLogger/**/*.cs"]),
# #     defines = [
# #         "TRACE",
# #     ],
# #     keyfile = ":vstest.snk",
# #     resources = [
# #         ":trxlogger_resource",
# #     ],
# #     visibility = ["//visibility:public"],
# #     deps = [
# #         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
# #     ],
# # )

# # core_vstest_test(
# #     name = "Microsoft.TestPlatform.CoreUtilities.UnitTests",
# #     srcs = glob(["vstest/test/Microsoft.TestPlatform.CoreUtilities.UnitTests/**/*.cs"]),
# #     visibility = ["//visibility:public"],
# #     defines = [
# #         "TRACE",
# #     ],
# #     deps = [
# #         ":Microsoft.TestPlatform.CoreUtilities",
# #         "//testfx:MSTest.Core",
# #         "//moq4:Moq",
# #     ],
# #     testlauncher = ":vstest.console",
# #     keyfile = ":vstest.snk",
# # )

# core_resx(
#     name = "testhostprovider_resource",
#     src = "vstest/src/Microsoft.TestPlatform.TestHostProvider/Resources/Resources.resx",
#     identifier = "Microsoft.TestPlatform.TestHostProvider.Resources.Resources.resources",
# )

# core_library(
#     name = "Microsoft.TestPlatform.TestHostProvider.dll",
#     srcs = glob(["vstest/src/Microsoft.TestPlatform.TestHostProvider/**/*.cs"]),
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     resources = [
#         ":testhostprovider_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#         "//newtonsoft.json:newtonsoft.json.dll",
#         "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#         "@microsoft.extensions.dependencymodel//:netcoreapp2.0_core",
#     ],
# )

# core_binary(
#     name = "testhost.dll",
#     srcs = [
#         ":vstest/src/testhost.x86/AppDomainEngineInvoker.cs",
#         ":vstest/src/testhost.x86/DefaultEngineInvoker.cs",
#         ":vstest/src/testhost.x86/Friends.cs",
#         ":vstest/src/testhost.x86/IEngineInvoker.cs",
#         ":vstest/src/testhost.x86/Program.cs",
#         ":vstest/src/testhost.x86/UnitTestClient.cs",
#     ],
#     defines = [
#         "TRACE",
#     ],
#     keyfile = ":vstest.snk",
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Microsoft.TestPlatform.CommunicationUtilities.dll",
#         ":Microsoft.TestPlatform.CrossPlatEngine.dll",
#         ":Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#     ],
# )
