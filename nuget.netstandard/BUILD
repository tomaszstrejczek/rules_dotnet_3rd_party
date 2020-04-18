exports_files([
    "nuget.snk",
    "AssemblyInfo.cs",
])

filegroup(
    name = "filesystem",
    srcs = glob(
        [
            "FileSystem2/src/Microsoft.Extensions.FileSystemGlobbing/**/*.cs",
            "FileSystem2/src/Microsoft.AspNet.FileProviders.Abstractions/**/*.cs",
            "FileSystem2/src/Microsoft.AspNet.FileProviders.Sources/**/*.cs",
            "Common2/src/Microsoft.Extensions.Primitives/IChangeToken.cs",
        ],
        exclude = [
            "FileSystem2/**/AssemblyInfo.cs",
            "Common2/**/AssemblyInfo.cs",
        ],
    ),
    visibility = ["//visibility:public"],
)
