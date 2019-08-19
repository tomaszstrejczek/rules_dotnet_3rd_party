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
    srcs = [":shared"] + glob([":nuget/src/NuGet.Core/NuGet.Frameworks/**/*.cs"]),
    defines = [
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
    srcs = [":shared"] + glob([":nuget/src/NuGet.Core/NuGet.Common/**/*.cs"]),
    defines = [
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_common_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Frameworks.dll",
    ],
)

core_resx(
    name = "nuget_configuration_resource",
    src = ":nuget/src/NuGet.Core/NuGet.Configuration/Resources.resx",
    identifier = "NuGet.Configuration.Resources.resources",
)

core_library(
    name = "NuGet.Configuration.dll",
    srcs = [":shared"] + glob([":nuget/src/NuGet.Core/NuGet.Configuration/**/*.cs"]),
    defines = [
    ],
    keyfile = ":nuget.snk",
    resources = [":nuget_configuration_resource"],
    visibility = ["//visibility:public"],
    deps = [
        ":NuGet.Common.dll",
    ],
)
