workspace(name = "rules_dotnet_3rd_party")

git_repository(
    name = "io_bazel_rules_dotnet",
    remote = "https://github.com/bazelbuild/rules_dotnet.git",
    commit = "229f507dc2fb1b1ed685a6cfe03ade24a9797fa3",
)

load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "dotnet_register_toolchains", "dotnet_repositories")

dotnet_repositories()
dotnet_register_toolchains("host")

new_http_archive(
    name = "xunit_abstractions",
    build_file = "//:abstractions.xunit/repo.bzl",
    urls = ["https://github.com/xunit/abstractions.xunit/archive/2.0.1.tar.gz"]
)

new_http_archive(
    name = "xunit_assert",
    build_file = "//:assert.xunit/repo.bzl",
    urls = ["https://github.com/xunit/assert.xunit/archive/2.4.1.tar.gz"],
    strip_prefix="assert.xunit-2.4.1",
)
