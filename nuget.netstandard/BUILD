load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_binary", "core_library", "core_resource", "core_resx")

filegroup(
    name = "shared",
    srcs = glob(["nuget/build/Shared/**/*.cs"]),
)

core_resx(
    name = "nuget_frameworks_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Frameworks/Strings.resx",
    identifier = "NuGet.Frameworks.Strings.resources",
)

core_library(
    name = "NuGet.Frameworks.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Frameworks/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_frameworks_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.process.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.textwritertracelistener.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.diagnostics.tracesource.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.queryable.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.private.corelib.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.reflection.emit.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.reflection.typeextensions.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.interopservices.runtimeinformation.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.loader.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.threading.tasks.extensions.dll",
    ],
)

core_resx(
    name = "nuget_common_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Common/Strings.resx",
    identifier = "NuGet.Common.Strings.resources",
)

core_library(
    name = "NuGet.Common.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Common/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_common_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Frameworks.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.compression.dll",
    ],
)

core_resx(
    name = "nuget_configuration_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Configuration/Resources.resx",
    identifier = "NuGet.Configuration.Resources.resources",
)

core_library(
    name = "NuGet.Configuration.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Configuration/**/*.cs"]),
    defines = [
        "IS_CORECLR",
        "SIGNED_BUILD",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_configuration_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.security.cryptography.protecteddata.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xdocument.dll",
    ],
)

core_resx(
    name = "nuget_versioning_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Versioning/Resources.resx",
    identifier = "NuGet.Versioning.Resources.resources",
)

core_library(
    name = "NuGet.Versioning.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Versioning/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_versioning_resource"],
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
    ],
)

core_library(
    name = "NuGet.Library.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Library/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    visibility = ["//visibility:public"],
    deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.linq.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.runtime.dll",
    ],
)

core_resx(
    name = "nuget_packaging_core_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Packaging.Core/Strings.resx",
    identifier = "NuGet.Packaging.Core.Strings.resources",
)

core_library(
    name = "NuGet.Packaging.Core.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Packaging.Core/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_packaging_core_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":NuGet.Frameworks.dll",
        ":NuGet.Versioning.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.xml.xdocument.dll",
    ],
)

core_resx(
    name = "nuget_packaging_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Packaging/Strings.resx",
    identifier = "NuGet.Packaging.Strings.resources",
)

core_resx(
    name = "nuget_packaging_resource2",
    src = ":nuget/src/NuGet.Core/NuGet.Packaging/Signing/DerEncoding/SR.resx",
    identifier = "NuGet.Packaging.Signing.DerEncoding.SR.resources",
)

core_resx(
    name = "nuget_packaging_resource3",
    src = ":nuget/src/NuGet.Core/NuGet.Packaging/PackageCreation/Resources/NuGetResources.resx",
    identifier = "NuGet.Packaging.PackageCreation.Resources.NuGetResources.resources",
)

core_resx(
    name = "nuget_packaging_resource4",
    src = ":nuget/src/NuGet.Core/NuGet.Packaging/Rules/AnalysisResources.resx",
    identifier = "NuGet.Packaging.Rules.AnalysisResources.resources",
)

core_library(
    name = "NuGet.Packaging.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Packaging/**/*.cs"]),
    defines = [
        "IS_CORECLR",
        "SIGNED_BUILD",
    ],
    keyfile = ":nuget.snk",
    resources = [
        ":nuget_packaging_resource",
        ":nuget_packaging_resource2",
        ":nuget_packaging_resource3",
        ":nuget_packaging_resource4",
    ],
    unsafe = True,
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":NuGet.Configuration.dll",
        ":NuGet.Packaging.Core.dll",
        "//newtonsoft.json:newtonsoft.json.dll",
    ],
)

core_resx(
    name = "nuget_protocol_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Protocol/Strings.resx",
    identifier = "NuGet.Protocol.Strings.resources",
)

core_library(
    name = "NuGet.Protocol.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Protocol/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_protocol_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Configuration.dll",
        ":NuGet.Packaging.dll",
    ],
)

core_library(
    name = "NuGet.LibraryModel.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.LibraryModel/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
        ":NuGet.Frameworks.dll",
        ":NuGet.Versioning.dll",
    ],
)

core_resx(
    name = "nuget_dependencyresolver_core_resource",
    src = ":nuget/src/NuGet.Core/NuGet.DependencyResolver.Core/Strings.resx",
    identifier = "NuGet.DependencyResolver.Core.Strings.resources",
)

core_library(
    name = "NuGet.DependencyResolver.Core.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.DependencyResolver.Core/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
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
    src = ":nuget/src/NuGet.Core/NuGet.Resolver/Strings.resx",
    identifier = "NuGet.Resolver.Strings.resources",
)

core_library(
    name = "NuGet.Resolver.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.Resolver/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_resolver_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Protocol.dll",
    ],
)

core_resx(
    name = "nuget_projectmodel_resource",
    src = ":nuget/src/NuGet.Core/NuGet.ProjectModel/Strings.resx",
    identifier = "NuGet.ProjectModel.Strings.resources",
)

core_library(
    name = "NuGet.ProjectModel.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.ProjectModel/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_projectmodel_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.DependencyResolver.Core.dll",
    ],
)

core_resx(
    name = "nuget_commands_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Commands/Strings.resx",
    identifier = "NuGet.Commands.Strings.resources",
)

core_library(
    name = "NuGet.Commands.dll",
    srcs = [":shared"] + glob([
        "nuget/src/NuGet.Core/NuGet.Commands/**/*.cs",
    ]) + glob(
        [
            "nuget/submodules/FileSystem/src/Microsoft.Extensions.FileSystemGlobbing/**/*.cs",
            "nuget/submodules/FileSystem/src/Microsoft.AspNet.FileProviders.Abstractions/**/*.cs",
            "nuget/submodules/FileSystem/src/Microsoft.AspNet.FileProviders.Sources/**/*.cs",
            "nuget/submodules/Common/src/Microsoft.Extensions.Primitives/IChangeToken.cs",
        ],
        exclude = ["nuget/submodules/**/AssemblyInfo.cs"],
    ),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_commands_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Configuration.dll",
        ":NuGet.DependencyResolver.Core.dll",
        ":NuGet.Frameworks.dll",
        ":NuGet.ProjectModel.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib.core:system.io.dll",
    ],
)

core_resx(
    name = "nuget_packagemanagement_resource",
    src = ":nuget/src/NuGet.Core/NuGet.PackageManagement/Strings.resx",
    identifier = "NuGet.PackageManagement.Strings.resources",
)

core_library(
    name = "NuGet.PackageManagement.dll",
    srcs = [":shared"] + glob(["nuget/src/NuGet.Core/NuGet.PackageManagement/**/*.cs"]),
    defines = [
        "IS_CORECLR",
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_packagemanagement_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Commands.dll",
        ":NuGet.Resolver.dll",
        #        "@io_bazel_rules_dotnet//dotnet/stdlib.net:system.componentmodel.composition.dll",
    ],
)
