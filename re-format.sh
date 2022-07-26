SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
$SCRIPT_DIR/lint-history --relevant 'return filename.endswith((b".c", b".h", b".cpp", b".hpp", b".cxx", b".ixx", b"CMakeLists.txt", b".cmake"))' bash $SCRIPT_DIR/format-code.sh
