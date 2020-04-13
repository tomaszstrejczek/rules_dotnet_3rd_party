workspace(name = "rules_dotnet_3rd_party")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "io_bazel_rules_dotnet",
    branch = "3rd_party",
    remote = "https://github.com/tomaszstrejczek/rules_dotnet.git",
)

#local_repository(
#    name = "io_bazel_rules_dotnet",
#    #path = "/home/nest-user/work/gopath/rules_dotnet",
#    path = "c:/rules_dotnet",
#)

load("@io_bazel_rules_dotnet//dotnet:deps.bzl", "dotnet_repositories")

dotnet_repositories()

load("@rules_dotnet_3rd_party//:repositories.bzl", "rules_dotnet_3rd_party_dependencies")
load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_register_sdk", "dotnet_register_toolchains", "dotnet_repositories_nugets")

dotnet_register_toolchains()

dotnet_repositories_nugets()

rules_dotnet_3rd_party_dependencies()

core_register_sdk(
    "v3.1.100",
    name = "core_sdk",
)
