# bazel-compilation-db

The easiest way to generate `compile_commands.json` with [Bazel](https://bazel.build).

1. Copy `third_party` to your repository directory. Append `WORKSPACE` to yours.
2. Optionally replace `'kind(cc_.*, //...)'` in `third_party/generate_compile_commands/gen.sh`.
3. Run `third_party/generate_compile_commands/gen.sh`.
4. Very likely you need `$ ln -s $(bazel info execution_root)/external .`.

Tested with bazel 2.2.0 and protobuf 3.11.4. For old versions of bazel and protobuf, try old commits.
