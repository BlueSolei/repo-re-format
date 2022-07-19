SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
$SCRIPT_DIR/lint-history --relevant 'return filename.endswith((b".cpp", b".h", b".hpp", b".c"))' clang-format -i -style=file:$SCRIPT_DIR/.clang-format
