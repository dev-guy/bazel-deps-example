load("//tools/workspace:default.bzl", "add_default_repositories")

add_default_repositories()

load(
    "@bazel_deps//tools/workspace:default.bzl",
    bazel_deps_add = "add_default_repositories",
)

bazel_deps_add()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Google Test
http_archive(
    name = "com_google_googletest",
    strip_prefix = "googletest-master",
    url = "https://github.com/google/googletest/archive/master.zip",
)

