# bazel-compilation-db

The easiest way to generate `compile_commands.json` with [Bazel](https://bazel.build).

1. Copy `third_party` to your repository directory. Append `WORKSPACE` to yours.
2. Optionally replace `'kind(cc_.*, //...)'` in `third_party/tools/generate_compilation_database.sh`.
3. Run `third_party/tools/generate_compilation_database.sh`.
4. Very likely you need `$ ln -s $(bazel info execution_root)/external .`.

Tested with Bazel 0.14.1, 0.20.0, 0.24.0, 0.26.0. Tested on Linux and MacOS.
