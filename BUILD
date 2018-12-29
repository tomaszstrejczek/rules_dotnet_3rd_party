load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "core_context_data")

core_context_data(
    name = "core_context_data",
)

filegroup(
    name = "all",
    srcs = [
        "@xunit_abstractions//:abstractions.xunit",
        "@xunit_assert//:assert.xunit",
    ]
)
