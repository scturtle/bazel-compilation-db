#!/bin/bash -e

bazel build \
  --experimental_action_listener=//third_party/tools/generate_compile_commands:extract_json \
  $(bazel query 'kind(cc_.*, //...)') > /dev/null

EXEC_ROOT=$(bazel info execution_root)
echo "[" > compile_commands.json
find ${EXEC_ROOT} -name '*.compile_command.json' -exec bash -c 'cat {} && echo ,' \; >> compile_commands.json
sed -i '$s/,$//' compile_commands.json
sed -i "s/__EXEC_ROOT__/$(echo $EXEC_ROOT | sed 's/\//\\\//g')/g" compile_commands.json
echo "]" >> compile_commands.json
