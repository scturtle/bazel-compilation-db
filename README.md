# bazel-compilation-db

The easiest way to generate `compile_commands.json` with [Bazel][bazel] in [Kythe][kythe]'s appoach.

1. Copy `third_party` to your repository directory.
2. Optionally replace `'kind(cc_.*, //...)'` in `third_party/tools/generate_compilation_database.sh`.
3. Run `third_party/tools/generate_compilation_database.sh`.

Tested with Bazel 0.14.1, 0.20.0, 0.24.0.

[bazel]: https://bazel.build/
[kythe]: https://github.com/google/kythe
