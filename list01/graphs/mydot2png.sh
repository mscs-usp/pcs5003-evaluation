filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"

dot -Tpng $1 > $filename.png
