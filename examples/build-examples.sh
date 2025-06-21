#!/bin/bash
set -e

echo "##"
echo "# building examples"
echo "##"
echo ""

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

# Function to check if Java is available and version >= 21
java_version_ok () {
  if ! command -v java >/dev/null 2>&1; then
    return 1
  fi

  # Extract the major Java version
  version_string=$(java -version 2>&1 | head -n 1)
  version_number=$(echo "$version_string" | grep -oE '[0-9]+\.[0-9]+' | head -n1 | cut -d. -f1)

  if [ "$version_number" -ge 21 ]; then
    return 0
  else
    return 1
  fi
}

# Check once and cache result
if java_version_ok; then
  java_available=true
else
  java_available=false
fi

# These examples are skipped because they don't run in CI builds (for now)
skippedExamples=("language-chinese" "language-japanese")

# Loop all files in the current folder
for f in *; do
  # Run only for folders
  if [ -d "$f" ]; then
    if containsElement "$f" "${skippedExamples[@]}"; then
      echo "skipping '$f'"
      echo ""
    else
      echo "building '$f'"
      cd "$f"

      if [ "$java_available" = true ] && [ -f "./GenerateMarkdownDocument.java" ]; then
        echo "    - generating markdown document"
        java GenerateMarkdownDocument.java
      fi

      echo "    - running pandoc build script"
      bash "$PWD/build.sh"
      echo "    - generating preview"
      pdftoppm -r 150 -png "document.pdf" > "preview.png"
      echo ""
      cd ".."
    fi
  fi
done
