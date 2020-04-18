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

    repositories_nugets()
