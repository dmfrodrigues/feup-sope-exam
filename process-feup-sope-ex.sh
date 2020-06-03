printentries () {
    dir=$1
    files=`find feup-sope-ex/$dir/*.* -not -path "feup-sope-ex/$dir/*.pdf" | sort`
    for f in $files; do
        extension="${f##*.}"
        echo "code:$f"
        echo ""
    done
}

cat feup-sope-ex-header.md
echo "# TP01"
printentries tp01
echo "# TP02"
printentries tp02
echo "# TP03"
printentries tp03
echo "# TP04"
printentries tp04
echo "# TP05"
printentries tp05
echo "# TP06"
printentries tp06
echo "# TP07"
printentries tp07
