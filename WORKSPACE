workspace(name = "rules_dotnet_3rd_party")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

local_repository(
    name = "io_bazel_rules_dotnet",
    #path = "/home/nest-user/work/gopath/rules_dotnet",
    path = "c:/rules_dotnet",
)

#git_repository(
#    name = "io_bazel_rules_dotnet",
#    remote = "https://github.com/bazelbuild/rules_dotnet.git",
#    commit = "229f507dc2fb1b1ed685a6cfe03ade24a9797fa3",
#)

load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_register_sdk", "dotnet_register_toolchains", "dotnet_repositories", "nuget_package")

dotnet_repositories()

dotnet_register_toolchains()

core_register_sdk(
    "v2.1.502",
    name = "core_sdk",
)

http_archive(
    name = "xunit_abstractions",
    build_file = "//:abstractions.xunit/repo.bzl",
    sha256 = "302dfe0b87993528b2e0c227b4aca4bec82ed136163d7b4b3f75f24f9d43f6fa",
    urls = ["https://github.com/xunit/abstractions.xunit/archive/2.0.1.tar.gz"],
)

http_archive(
    name = "xunit_assert",
    build_file = "//:assert.xunit/repo.bzl",
    sha256 = "82e662c9a30b9468640d4e1b0db3fca58c22d5ac6f9b7ab8cc16ba1e35515d1c",
    strip_prefix = "assert.xunit-2.4.1",
    urls = ["https://github.com/xunit/assert.xunit/archive/2.4.1.tar.gz"],
)

### Generated by the tool
nuget_package(
    name = "microsoft.dotnet.internalabstractions",
    core_files = {
        "netcoreapp2.0": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "netcoreapp2.1": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
    },
    core_lib = {
        "netcoreapp2.0": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        "netcoreapp2.1": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
    },
    mono_files = [
        "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
    ],
    mono_lib = "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
    net_files = {
        "net451": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net452": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net46": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net461": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net462": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net47": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net471": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "net472": [
            "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "netstandard1.3": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "netstandard1.4": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "netstandard1.5": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "netstandard1.6": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
        "netstandard2.0": [
            "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        ],
    },
    net_lib = {
        "net451": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net452": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net46": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net461": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net462": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net47": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net471": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "net472": "lib/net451/Microsoft.DotNet.InternalAbstractions.dll",
        "netstandard1.3": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        "netstandard1.4": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        "netstandard1.5": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        "netstandard1.6": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
        "netstandard2.0": "lib/netstandard1.3/Microsoft.DotNet.InternalAbstractions.dll",
    },
    package = "microsoft.dotnet.internalabstractions",
    version = "1.0.0",
)

nuget_package(
    name = "microsoft.dotnet.platformabstractions",
    core_files = {
        "netcoreapp2.0": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "netcoreapp2.1": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
    },
    core_lib = {
        "netcoreapp2.0": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        "netcoreapp2.1": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
    },
    mono_files = [
        "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
    ],
    mono_lib = "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
    net_files = {
        "net451": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net452": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net46": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net461": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net462": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net47": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net471": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "net472": [
            "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "netstandard1.3": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "netstandard1.4": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "netstandard1.5": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "netstandard1.6": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
        "netstandard2.0": [
            "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        ],
    },
    net_lib = {
        "net451": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net452": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net46": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net461": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net462": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net47": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net471": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "net472": "lib/net451/Microsoft.DotNet.PlatformAbstractions.dll",
        "netstandard1.3": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        "netstandard1.4": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        "netstandard1.5": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        "netstandard1.6": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        "netstandard2.0": "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
    },
    package = "microsoft.dotnet.platformabstractions",
    version = "1.1.9",
)

nuget_package(
    name = "newtonsoft.json",
    core_files = {
        "netcoreapp2.0": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netcoreapp2.1": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
    },
    core_lib = {
        "netcoreapp2.0": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netcoreapp2.1": "lib/netstandard1.0/Newtonsoft.Json.dll",
    },
    mono_files = [
        "lib/net45/Newtonsoft.Json.dll",
        "lib/net45/Newtonsoft.Json.xml",
        "tools/install.ps1",
    ],
    mono_lib = "lib/net45/Newtonsoft.Json.dll",
    net_files = {
        "net45": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net451": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net452": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net46": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net461": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net462": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net47": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net471": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "net472": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.0": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.1": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.2": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.3": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.4": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.5": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard1.6": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
        "netstandard2.0": [
            "lib/netstandard1.0/Newtonsoft.Json.dll",
            "lib/netstandard1.0/Newtonsoft.Json.xml",
            "tools/install.ps1",
        ],
    },
    net_lib = {
        "net45": "lib/net45/Newtonsoft.Json.dll",
        "net451": "lib/net45/Newtonsoft.Json.dll",
        "net452": "lib/net45/Newtonsoft.Json.dll",
        "net46": "lib/net45/Newtonsoft.Json.dll",
        "net461": "lib/net45/Newtonsoft.Json.dll",
        "net462": "lib/net45/Newtonsoft.Json.dll",
        "net47": "lib/net45/Newtonsoft.Json.dll",
        "net471": "lib/net45/Newtonsoft.Json.dll",
        "net472": "lib/net45/Newtonsoft.Json.dll",
        "netstandard1.0": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard1.1": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard1.2": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard1.3": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard1.4": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard1.5": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard1.6": "lib/netstandard1.0/Newtonsoft.Json.dll",
        "netstandard2.0": "lib/netstandard1.0/Newtonsoft.Json.dll",
    },
    package = "newtonsoft.json",
    version = "9.0.1",
)

nuget_package(
    name = "microsoft.extensions.dependencymodel",
    core_deps = {
        "net451": [
            "@microsoft.dotnet.platformabstractions//:net451_net",
            "@newtonsoft.json//:net451_net",
        ],
        "net452": [
            "@microsoft.dotnet.platformabstractions//:net452_net",
            "@newtonsoft.json//:net452_net",
        ],
        "net46": [
            "@microsoft.dotnet.platformabstractions//:net46_net",
            "@newtonsoft.json//:net46_net",
        ],
        "net461": [
            "@microsoft.dotnet.platformabstractions//:net461_net",
            "@newtonsoft.json//:net461_net",
        ],
        "net462": [
            "@microsoft.dotnet.platformabstractions//:net462_net",
            "@newtonsoft.json//:net462_net",
        ],
        "net47": [
            "@microsoft.dotnet.platformabstractions//:net47_net",
            "@newtonsoft.json//:net47_net",
        ],
        "net471": [
            "@microsoft.dotnet.platformabstractions//:net471_net",
            "@newtonsoft.json//:net471_net",
        ],
        "net472": [
            "@microsoft.dotnet.platformabstractions//:net472_net",
            "@newtonsoft.json//:net472_net",
        ],
        "netstandard1.3": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.3_net",
            "@newtonsoft.json//:netstandard1.3_net",
        ],
        "netstandard1.4": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.4_net",
            "@newtonsoft.json//:netstandard1.4_net",
        ],
        "netstandard1.5": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.5_net",
            "@newtonsoft.json//:netstandard1.5_net",
        ],
        "netstandard1.6": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.6_net",
            "@newtonsoft.json//:netstandard1.6_net",
        ],
        "netstandard2.0": [
            "@microsoft.dotnet.platformabstractions//:netstandard2.0_net",
            "@newtonsoft.json//:netstandard2.0_net",
        ],
    },
    core_files = {
        "netcoreapp2.0": [
            "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        ],
        "netcoreapp2.1": [
            "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        ],
    },
    core_lib = {
        "netcoreapp2.0": "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        "netcoreapp2.1": "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
    },
    mono_deps = [
        "@microsoft.dotnet.platformabstractions//:mono",
        "@newtonsoft.json//:mono",
    ],
    mono_files = [
        "lib/net451/Microsoft.Extensions.DependencyModel.dll",
    ],
    mono_lib = "lib/net451/Microsoft.Extensions.DependencyModel.dll",
    net_deps = {
        "net451": [
            "@microsoft.dotnet.platformabstractions//:net451_net",
            "@newtonsoft.json//:net451_net",
        ],
        "net452": [
            "@microsoft.dotnet.platformabstractions//:net452_net",
            "@newtonsoft.json//:net452_net",
        ],
        "net46": [
            "@microsoft.dotnet.platformabstractions//:net46_net",
            "@newtonsoft.json//:net46_net",
        ],
        "net461": [
            "@microsoft.dotnet.platformabstractions//:net461_net",
            "@newtonsoft.json//:net461_net",
        ],
        "net462": [
            "@microsoft.dotnet.platformabstractions//:net462_net",
            "@newtonsoft.json//:net462_net",
        ],
        "net47": [
            "@microsoft.dotnet.platformabstractions//:net47_net",
            "@newtonsoft.json//:net47_net",
        ],
        "net471": [
            "@microsoft.dotnet.platformabstractions//:net471_net",
            "@newtonsoft.json//:net471_net",
        ],
        "net472": [
            "@microsoft.dotnet.platformabstractions//:net472_net",
            "@newtonsoft.json//:net472_net",
        ],
        "netstandard1.3": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.3_net",
            "@newtonsoft.json//:netstandard1.3_net",
        ],
        "netstandard1.4": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.4_net",
            "@newtonsoft.json//:netstandard1.4_net",
        ],
        "netstandard1.5": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.5_net",
            "@newtonsoft.json//:netstandard1.5_net",
        ],
        "netstandard1.6": [
            "@microsoft.dotnet.platformabstractions//:netstandard1.6_net",
            "@newtonsoft.json//:netstandard1.6_net",
        ],
        "netstandard2.0": [
            "@microsoft.dotnet.platformabstractions//:netstandard2.0_net",
            "@newtonsoft.json//:netstandard2.0_net",
        ],
    },
    net_files = {
        "net45": [
            "lib/",
            "lib/.DS_Store",
            "lib/net451/",
            "lib/netstandard1.3/",
            "lib/netstandard1.6/",
        ],
        "net451": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net452": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net46": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net461": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net462": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net47": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net471": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "net472": [
            "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        ],
        "netstandard1.0": [
            "lib/",
            "lib/.DS_Store",
            "lib/net451/",
            "lib/netstandard1.3/",
            "lib/netstandard1.6/",
        ],
        "netstandard1.1": [
            "lib/",
            "lib/.DS_Store",
            "lib/net451/",
            "lib/netstandard1.3/",
            "lib/netstandard1.6/",
        ],
        "netstandard1.2": [
            "lib/",
            "lib/.DS_Store",
            "lib/net451/",
            "lib/netstandard1.3/",
            "lib/netstandard1.6/",
        ],
        "netstandard1.3": [
            "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        ],
        "netstandard1.4": [
            "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        ],
        "netstandard1.5": [
            "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        ],
        "netstandard1.6": [
            "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        ],
        "netstandard2.0": [
            "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        ],
    },
    net_lib = {
        "net451": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net452": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net46": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net461": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net462": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net47": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net471": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "net472": "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "netstandard1.3": "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        "netstandard1.4": "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        "netstandard1.5": "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        "netstandard1.6": "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        "netstandard2.0": "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
    },
    package = "microsoft.extensions.dependencymodel",
    version = "1.0.3",
)

nuget_package(
    name = "system.xml.xpath.xmldocument",
    core_files = {
        "netcoreapp2.0": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
        "netcoreapp2.1": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
    },
    core_lib = {
        "netcoreapp2.0": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "netcoreapp2.1": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
    },
    mono_deps = [
        "@io_bazel_rules_dotnet//dotnet/stdlib:system.xml.xmldocument.dll",
        "@io_bazel_rules_dotnet//dotnet/stdlib:system.xml.xpath.dll",
    ],
    mono_files = [
        "lib/net46/System.Xml.XPath.XmlDocument.dll",
    ],
    mono_lib = "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
    net_deps = {
        "net46": [
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net46_system.xml.xmldocument.dll",
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net46_system.xml.xpath.dll",
        ],
        "net461": [
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net461_system.xml.xmldocument.dll",
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net461_system.xml.xpath.dll",
        ],
        "net462": [
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net462_system.xml.xmldocument.dll",
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net462_system.xml.xpath.dll",
        ],
        "net47": [
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net47_system.xml.xmldocument.dll",
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net47_system.xml.xpath.dll",
        ],
        "net471": [
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net471_system.xml.xmldocument.dll",
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net471_system.xml.xpath.dll",
        ],
        "net472": [
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net472_system.xml.xmldocument.dll",
            "@io_bazel_rules_dotnet//dotnet/stdlib.net:net472_system.xml.xpath.dll",
        ],
    },
    net_files = {
        "net46": [
            "lib/net46/System.Xml.XPath.XmlDocument.dll",
        ],
        "net461": [
            "lib/net46/System.Xml.XPath.XmlDocument.dll",
        ],
        "net462": [
            "lib/net46/System.Xml.XPath.XmlDocument.dll",
        ],
        "net47": [
            "lib/net46/System.Xml.XPath.XmlDocument.dll",
        ],
        "net471": [
            "lib/net46/System.Xml.XPath.XmlDocument.dll",
        ],
        "net472": [
            "lib/net46/System.Xml.XPath.XmlDocument.dll",
        ],
        "netstandard1.3": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
        "netstandard1.4": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
        "netstandard1.5": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
        "netstandard1.6": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
        "netstandard2.0": [
            "lib/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        ],
    },
    net_lib = {
        "net46": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "net461": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "net462": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "net47": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "net471": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "net472": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "netstandard1.3": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "netstandard1.4": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "netstandard1.5": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "netstandard1.6": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
        "netstandard2.0": "ref/netstandard1.3/System.Xml.XPath.XmlDocument.dll",
    },
    package = "system.xml.xpath.xmldocument",
    version = "4.3.0",
)
### End of generated by the tool
