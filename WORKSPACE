workspace(name = "bazel-deps-example")

# bazel_deps (begin)
load("//tools/workspace:default.bzl", "add_default_repositories")

add_default_repositories()

load(
    "@bazel_deps//tools/workspace:default.bzl",
    bazel_deps_add = "add_default_repositories",
)

bazel_deps_add()
# bazel_deps (end)

