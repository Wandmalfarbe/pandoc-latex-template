#!/bin/bash
set -e
cp "../eisvogel.tex" "../eisvogel.latex"

echo "##"
echo "# building examples"
echo "##"
echo ""

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

# these examples are skipped because they don't run on travis (for now)
skippedExamples=("images-and-tables")

# loop all files in the current folder
for f in *; do
	# run only for folders
    if [ -d "$f" ]; then

    	if containsElement "$f" "${skippedExamples[@]}"; then
    		echo "${Yellow}skipping '$f'${Color_Off}"
    		echo ""
    	else
    		echo "${Blue}building '$f'${Color_Off}"
    		cd "$f"
    		echo "    - running pandoc build script"
        	sh "$PWD/build.sh"
        	echo "    - generating preview"
        	pdftoppm -r 150 -png "document.pdf" > "preview.png"
        	echo ""
        	cd ".."
    	fi
    fi
done