printentries () {
    dir=$1
    files=`find feup-sope-ex/$dir/*.c feup-sope-ex/$dir/*.sh | sort`
    for f in $files; do
        extension="${f##*.}"
        echo "code:$f"
    done
}

cat feup-sope-ex-header.md
echo "# TP01"
printentries tp01
