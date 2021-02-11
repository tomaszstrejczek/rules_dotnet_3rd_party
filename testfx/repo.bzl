# load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resx")

# core_resx(
#     name = "core_resource",
#     src = "src/TestFramework/MSTest.Core/Resources/FrameworkMessages.resx",
#     identifier = "Microsoft.VisualStudio.TestTools.UnitTesting.Resources.FrameworkMessages.resources",
# )

# core_library(
#     name = "MSTest.Core.dll",
#     srcs = glob(["testfx/src/TestFramework/MSTest.Core/**/*.cs"]) + glob([
#         "testfx/src/TestFramework/Extension.Shared/**/*.cs",
#     ]) + [
#         "//testfx:Friends.cs",
#     ],
#     defines = [
#     ],
#     keyfile = "//testfx:testfx.snk",
#     resources = [":core_resource"],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Extension.Core.dll",
#         "@core_sdk_stdlib//:libraryset",
#     ],
# )

# core_library(
#     name = "Extension.Core.dll",
#     srcs = glob(["src/TestFramework/Extension.Core/**/*.cs"]),
#     defines = [
#     ],
#     keyfile = "@rules_dotnet_3rd_party//testfx:testfx.snk",
#     visibility = ["//visibility:public"],
#     deps = [
#         "@core_sdk_stdlib//:libraryset",
#     ],
# )

# core_library(
#     name = "PlatformServices.Interface.dll",
#     srcs = glob(["testfx/src/Adapter/PlatformServices.Interface/**/*.cs"]),
#     defines = [
#     ],
#     keyfile = "//testfx:testfx.snk",
#     visibility = ["//visibility:public"],
#     deps = [
#         ":Extension.Core.dll",
#         ":MSTest.Core.dll",
#         "//vstest:Microsoft.VisualStudio.TestPlatform.ObjectModel.dll",
#         "@core_sdk_stdlib//:libraryset",
#     ],
# )

# core_library(
#     name = "PlatformServices.Portable.dll",
#     srcs = glob(["testfx/src/Adapter/PlatformServices.Portable/**/*.cs"]) + glob([
#         "testfx/src/Adapter/PlatformServices.Shared/netstandard1.0/Services/**/*.cs",
#     ]) + [
#         "testfx/src/Adapter/PlatformServices.Shared/netstandard1.0/Constants.cs",
#     ],
#     defines = [
#     ],
#     keyfile = "//testfx:testfx.snk",
#     visibility = ["//visibility:public"],
#     deps = [
#         ":PlatformServices.Interface.dll",
#     ],
# )

# core_resx(
#     name = "adapter_resource",
#     src = "testfx/src/Adapter/MSTest.CoreAdapter/Resources/Resource.resx",
#     identifier = "Microsoft.VisualStudio.TestPlatform.MSTest.TestAdapter.Resources.Resource.resources",
# )

# core_library(
#     name = "Microsoft.VisualStudio.TestPlatform.MSTest.TestAdapter.dll",
#     srcs = glob(
#         ["testfx/src/Adapter/MSTest.CoreAdapter/**/*.cs"],
#         exclude = ["testfx/src/Adapter/MSTest.CoreAdapter/Execution/TestContextImpl.cs"],
#     ),
#     defines = [
#     ],
#     keyfile = "//testfx:testfx.snk",
#     resources = [
#         ":adapter_resource",
#     ],
#     visibility = ["//visibility:public"],
#     deps = [
#         ":PlatformServices.Portable.dll",
#     ],
# )
