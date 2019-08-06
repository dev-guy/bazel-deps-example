load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def bazel_deps_repository(name):
    commit = "master"
    http_archive(
        name = name,
        url = "https://github.com/mjbots/bazel_deps/archive/{}.zip".format(commit),
        # sha256 = "XXX",
        strip_prefix = "bazel_deps-{}".format(commit),
    )
