bazel run @io_bazel_rules_dotnet//tools/nuget2bazel:nuget2bazel.exe -- add -p c:/rules_dotnet_3rd_party/ -b nugets.bzl -c nugets.json -i -l Microsoft.Extensions.FileSystemGlobbing 3.1.3
bazel run @io_bazel_rules_dotnet//tools/nuget2bazel:nuget2bazel.exe -- add -p c:/rules_dotnet_3rd_party/ -b nugets.bzl -c nugets.json -i -l Microsoft.Extensions.DependencyModel 3.1.3
