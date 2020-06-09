load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_library", "core_resx", "core_stdlib")

core_stdlib(name = "system.security.cryptography.protecteddata.dll", version = "4.0.5.0")

filegroup(
    name = "shared",
    srcs = glob(["build/Shared/**/*.cs"]) + ["@rules_dotnet_3rd_party//nuget.netstandard:AssemblyInfo.cs"],
)

core_resx(
    name = "nuget_frameworks_resource",
    src = "src/NuGet.Core/NuGet.Frameworks/Strings.resx",
    identifier = "NuGet.Frameworks.Strings.resources",
)

core_library(
    name = "NuGet.Frameworks.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Frameworks/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_frameworks_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_resx(
    name = "nuget_common_resource",
    src = "src/NuGet.Core/NuGet.Common/Strings.resx",
    identifier = "NuGet.Common.Strings.resources",
)

core_library(
    name = "NuGet.Common.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Common/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_common_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Frameworks.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_resx(
    name = "nuget_configuration_resource",
    src = "src/NuGet.Core/NuGet.Configuration/Resources.resx",
    identifier = "NuGet.Configuration.Resources.resources",
)

core_library(
    name = "NuGet.Configuration.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Configuration/**/*.cs"]),
    defines = [
        "IS_CORECLR",
        "SIGNED_BUILD",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_configuration_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":system.security.cryptography.protecteddata.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_resx(
    name = "nuget_versioning_resource",
    src = "src/NuGet.Core/NuGet.Versioning/Resources.resx",
    identifier = "NuGet.Versioning.Resources.resources",
)

core_library(
    name = "NuGet.Versioning.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Versioning/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_versioning_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_library(
    name = "NuGet.Library.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Library/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_resx(
    name = "nuget_packaging_core_resource",
    src = "src/NuGet.Core/NuGet.Packaging.Core/Strings.resx",
    identifier = "NuGet.Packaging.Core.Strings.resources",
)

core_library(
    name = "NuGet.Packaging.Core.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Packaging.Core/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_packaging_core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":NuGet.Frameworks.dll",
        ":NuGet.Versioning.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
    ],
)

core_resx(
    name = "nuget_packaging_resource",
    src = "src/NuGet.Core/NuGet.Packaging/Strings.resx",
    identifier = "NuGet.Packaging.Strings.resources",
)

core_resx(
    name = "nuget_packaging_resource3",
    src = "src/NuGet.Core/NuGet.Packaging/PackageCreation/Resources/NuGetResources.resx",
    identifier = "NuGet.Packaging.PackageCreation.Resources.NuGetResources.resources",
)

core_library(
    name = "NuGet.Packaging.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Packaging/**/*.cs"]),
    defines = [
        "IS_CORECLR",
        "SIGNED_BUILD",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [
        ":nuget_packaging_resource",
        ":nuget_packaging_resource3",
    ],
    unsafe = True,
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":NuGet.Configuration.dll",
        ":NuGet.Packaging.Core.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@newtonsoft.json//:core",
    ],
)

core_resx(
    name = "nuget_protocol_resource",
    src = "src/NuGet.Core/NuGet.Protocol/Strings.resx",
    identifier = "NuGet.Protocol.Strings.resources",
)

core_library(
    name = "NuGet.Protocol.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Protocol/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_protocol_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Configuration.dll",
        ":NuGet.Packaging.dll",
    ],
)

core_library(
    name = "NuGet.LibraryModel.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.LibraryModel/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":NuGet.Frameworks.dll",
        ":NuGet.Versioning.dll",
    ],
)

core_resx(
    name = "nuget_dependencyresolver_core_resource",
    src = "src/NuGet.Core/NuGet.DependencyResolver.Core/Strings.resx",
    identifier = "NuGet.DependencyResolver.Core.Strings.resources",
)

core_library(
    name = "NuGet.DependencyResolver.Core.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.DependencyResolver.Core/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_dependencyresolver_core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Frameworks.dll",
        ":NuGet.LibraryModel.dll",
        ":NuGet.Protocol.dll",
    ],
)

core_resx(
    name = "nuget_resolver_resource",
    src = "src/NuGet.Core/NuGet.Resolver/Strings.resx",
    identifier = "NuGet.Resolver.Strings.resources",
)

core_library(
    name = "NuGet.Resolver.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.Resolver/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_resolver_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Protocol.dll",
    ],
)

core_resx(
    name = "nuget_projectmodel_resource",
    src = "src/NuGet.Core/NuGet.ProjectModel/Strings.resx",
    identifier = "NuGet.ProjectModel.Strings.resources",
)

core_library(
    name = "NuGet.ProjectModel.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.ProjectModel/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_projectmodel_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.DependencyResolver.Core.dll",
    ],
)

core_resx(
    name = "nuget_commands_resource",
    src = "src/NuGet.Core/NuGet.Commands/Strings.resx",
    identifier = "NuGet.Commands.Strings.resources",
)

core_library(
    name = "NuGet.Commands.dll",
    srcs = [":shared"] + glob([
        "src/NuGet.Core/NuGet.Commands/**/*.cs",
    ]) + ["@rules_dotnet_3rd_party//nuget.netstandard:filesystem"],
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_commands_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Configuration.dll",
        ":NuGet.DependencyResolver.Core.dll",
        ":NuGet.Frameworks.dll",
        ":NuGet.ProjectModel.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@microsoft.extensions.primitives//:core",
    ],
)

core_resx(
    name = "nuget_packagemanagement_resource",
    src = "src/NuGet.Core/NuGet.PackageManagement/Strings.resx",
    identifier = "NuGet.PackageManagement.Strings.resources",
)

core_library(
    name = "NuGet.PackageManagement.dll",
    srcs = [":shared"] + glob(["src/NuGet.Core/NuGet.PackageManagement/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = "@rules_dotnet_3rd_party//nuget.netstandard:nuget.snk",
    resources = [":nuget_packagemanagement_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Commands.dll",
        ":NuGet.Resolver.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:libraryset",
        "@microsoft.web.xdt//:core",
        "@system.componentmodel.composition//:core",
    ],
)
