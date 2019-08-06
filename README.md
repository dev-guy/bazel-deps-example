```bash
$ bazel
                                                          [bazel release 0.28.1]

$ bazel clean --expunge
INFO: Starting clean.

$ bazel build -s test
Starting local Bazel server and connecting to it...
INFO: SHA256 (https://github.com/mjbots/bazel_deps/archive/master.zip) = 097fec3446afea128f0cfabe6a8a8cebd2724429e5e575a14a9b4f410a9990ab
DEBUG: Rule 'bazel_deps' indicated that a canonical reproducible form can be 
obtained by modifying arguments sha256 =
"097fec3446afea128f0cfabe6a8a8cebd2724429e5e575a14a9b4f410a9990ab"
DEBUG: Call stack for the definition of repository 'bazel_deps' which is 
a http_archive (rule definition at /private/var/tmp/.../external/bazel_tools/
tools/build_defs/repo/http.bzl:237:16):
 - .../tools/workspace/bazel_deps/repository.bzl:5:5
 - .../tools/workspace/default.bzl:5:9
 - .../WORKSPACE:3:1
ERROR: Failed to load Starlark extension '@com_github_mjbots_bazel_deps//tools/workspace:makefile.bzl'.
Cycle in the workspace file detected. This indicates that a repository is used prior to being defined.
The following chain of repository dependencies lead to the missing definition.
 - @com_github_mjbots_bazel_deps
This could either mean you have to add the '@com_github_mjbots_bazel_deps' repository 
with a statement like `http_archive` in your WORKSPACE file (note that transitive dependencies 
are not added automatically), or move an existing definition earlier in your WORKSPACE file.
ERROR: cycles detected during target parsing
INFO: Elapsed time: 5.382s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (0 packages loaded)
```
