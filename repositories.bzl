load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load(":nugets.bzl", "repositories_nugets")

def rules_dotnet_3rd_party_dependencies():
    http_archive(
        name = "xunit_abstractions",
        build_file = "@rules_dotnet_3rd_party//:abstractions.xunit/repo.bzl",
        sha256 = "302dfe0b87993528b2e0c227b4aca4bec82ed136163d7b4b3f75f24f9d43f6fa",
        urls = ["https://github.com/xunit/abstractions.xunit/archive/2.0.1.tar.gz"],
    )

    http_archive(
        name = "xunit_assert",
        build_file = "@rules_dotnet_3rd_party//:assert.xunit/repo.bzl",
        sha256 = "82e662c9a30b9468640d4e1b0db3fca58c22d5ac6f9b7ab8cc16ba1e35515d1c",
        strip_prefix = "assert.xunit-2.4.1",
        urls = ["https://github.com/xunit/assert.xunit/archive/2.4.1.tar.gz"],
    )

    http_archive(
        name = "castle.core",
        build_file = "@rules_dotnet_3rd_party//:castle.core/repo.bzl",
        sha256 = "6d3cfb53269948c2da4e3b03b0666a3b41dc571335ad0a71eaad7248c4133ec8",
        strip_prefix = "Core-4.4.0",
        urls = ["https://github.com/castleproject/Core/archive/v4.4.0.tar.gz"],
        patches = ["@rules_dotnet_3rd_party//:castle.core/0001-ProxyGenerationOptions.patch", "@rules_dotnet_3rd_party//:castle.core/0001-TypeBuilderExtensions.patch"],
    )

    http_archive(
        name = "TypeNameFormatter",
        build_file = "@rules_dotnet_3rd_party//:TypeNameFormatter/repo.bzl",
        sha256 = "46599d3f50ccc10a847eb6321045ca3ee06079efc85c78a3c7a3f39ead91675d",
        strip_prefix = "TypeNameFormatter-1.0.0",
        urls = ["https://github.com/stakx/TypeNameFormatter/archive/v1.0.0.tar.gz"],
    )

    http_archive(
        name = "moq4",
        build_file = "@rules_dotnet_3rd_party//:moq4/repo.bzl",
        sha256 = "e0f013dd3e774351e3c03cdfc04d51db8a22e993ff30a0266cd046671801e989",
        strip_prefix = "moq4-4.13.1",
        urls = ["https://github.com/moq/moq4/archive/v4.13.1.tar.gz"],
        patches = ["@rules_dotnet_3rd_party//:moq4/tests.patch", "@rules_dotnet_3rd_party//:moq4/tests.linux.patch"],
    )

    http_archive(
        name = "junit.testlogger",
        build_file = "@rules_dotnet_3rd_party//:junit.testlogger/repo.bzl",
        sha256 = "7fcc98f597e25c427552fc5f50411cd22a29442bf81297cdd3cbb3192f3c8ba9",
        strip_prefix = "junit.testlogger-2.1.15",
        urls = ["https://github.com/spekt/junit.testlogger/archive/v2.1.15.tar.gz"],
    )

    http_archive(
        name = "mono-cecil",
        build_file = "@rules_dotnet_3rd_party//:mono-cecil/repo.bzl",
        sha256 = "1e979e5ed0bb846c7584c333b9c21b1902576305d29e975aba611e421d9ebea1",
        strip_prefix = "cecil-0.11.2",
        urls = ["https://github.com/jbevain/cecil/archive/0.11.2.tar.gz"],
    )

    http_archive(
        name = "newtonsoft.json.12",
        build_file = "@rules_dotnet_3rd_party//newtonsoft.json:repo.bzl",
        sha256 = "731bdcd1f74c4eed84c27ea72df132453b560a6ebecc849b87b6f87f001bffd3",
        strip_prefix = "newtonsoft.json-12.0.2",
        urls = ["https://github.com/JamesNK/Newtonsoft.Json/archive/12.0.2.tar.gz"],
    )

    http_archive(
        name = "nuget.netstandard",
        build_file = "@rules_dotnet_3rd_party//nuget.netstandard:repo.bzl",
        sha256 = "d8a458b33ae05ab6de8588ee368ccf2aa47e60e75580d14735f9a2eef818b58d",
        strip_prefix = "NuGet.Client-4.4.0.4365",
        urls = ["https://github.com/aelij/NuGet.Client/archive/4.4.0.4365.tar.gz"],
    )

    http_archive(
        name = "vstest.16.5",
        build_file = "@rules_dotnet_3rd_party//vstest:repo.bzl",
        sha256 = "9a3e1cec6a841a82001b443878ea5dff5ac54247bcb5ad86136c365b308a91ac",
        strip_prefix = "vstest-16.5.0",
        urls = ["https://github.com/microsoft/vstest/archive/v16.5.0.tar.gz"],
        patches = ["@rules_dotnet_3rd_party//vstest:000.patch"],
    )

    http_archive(
        name = "xunit.2.4.1",
        build_file = "@rules_dotnet_3rd_party//xunit:repo.bzl",
        sha256 = "01a73e2fd8675fb2237ba067f2f3f12baf6d388216145fcb8374d6085f056f71",
        strip_prefix = "xunit-2.4.1",
        urls = ["https://github.com/xunit/xunit/archive/2.4.1.tar.gz"],
    )

    http_archive(
        name = "testfx",
        build_file = "@rules_dotnet_3rd_party//testfx:repo.bzl",
        sha256 = "26e46b3019dd7a4189d88e98e3bcbd8c0fb912565fb028f495884e2c67770fe0",
        strip_prefix = "testfx-2.1.1",
        urls = ["https://github.com/microsoft/testfx/archive/v2.1.1.tar.gz"],
    )

    http_archive(
        name = "nunit-console.3.11.1",
        build_file = "@rules_dotnet_3rd_party//:nunit-console/repo.bzl",
        sha256 = "8b9b23c4570be6d4e78349b5c0949e08dc47a14edd1492eea3f832c6e79be80d",
        strip_prefix = "nunit-console-3.11.1",
        urls = ["https://github.com/nunit/nunit-console/archive/v3.11.1.tar.gz"],
    )

    http_archive(
        name = "nunit.3.12",
        build_file = "@rules_dotnet_3rd_party//:nunit/repo.bzl",
        sha256 = "26c979ccfb29ee5120138a833a7be634e0f902981083ae30fd46f89bc2821477",
        strip_prefix = "nunit-3.12",
        urls = ["https://github.com/nunit/nunit/archive/v3.12.tar.gz"],
        patches = ["@rules_dotnet_3rd_party//:nunit/000.patch"],
    )

    http_archive(
        name = "nunit3-vs-adapter.3.16.1",
        build_file = "@rules_dotnet_3rd_party//:nunit3-vs-adapter/repo.bzl",
        sha256 = "5eac562a3b12a5e9a342eba956ed1b2460bd6373560e5b3cd22333a050ce8f22",
        strip_prefix = "nunit3-vs-adapter-3.16.1",
        urls = ["https://github.com/nunit/nunit3-vs-adapter/archive/V3.16.1.tar.gz"],
    )

    repositories_nugets()
