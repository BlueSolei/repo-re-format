SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

FILE_NAME=$1

# C++ files
if [[ "$FILE_NAME" =~ (.*.c$)|(.*.h$)|(.*.cpp$)|(.*.hpp$)|(.*.cxx$)|(.*.ixx$) ]]; then
  clang-format -i -style=file:$SCRIPT_DIR/.clang-format $FILE_NAME
fi

# CMake files
if [[ "$FILE_NAME" =~ (CMakeLists.txt$)|(.*.cmake$) ]]; then
  cmake-format --enable-markup false -i $FILE_NAME
fi

# CRLF --> LF
dos2unix -q $FILE_NAME
