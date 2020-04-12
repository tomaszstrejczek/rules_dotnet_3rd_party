# load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resx")

# core_resx(
#     name = "core_resource",
#     src = ":moq4/src/Moq/Properties/Resources.resx",
#     identifier = "Moq.Properties.Resources.resources",
# )

# core_library(
#     name = "Moq.dll",
#     srcs = glob(["moq4/src/Moq/**/*.cs"]),
#     defines = [
#         "NETCORE",
#     ],
#     keyfile = ":moq4/Moq.snk",
#     resources = [":core_resource"],
#     visibility = ["//visibility:public"],
#     deps = [
#         "//TypeNameFormatter:TypeNameFormatter.dll",
#         "//castle.core:Castle.Core.dll",
#         "//ifluentinterface:IFluentInterface.dll",
#         "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
#     ],
# )
