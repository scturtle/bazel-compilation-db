load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-3.11.4",
    urls = ["https://github.com/google/protobuf/archive/v3.11.4/protobuf-3.11.4.tar.gz"],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()
