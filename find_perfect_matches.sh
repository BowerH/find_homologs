queryfile="$1"
subjectfile="$2"
outfile="$3"

blastn -query "$queryfile" -subject "$subjectfile" -outfmt "6 pident length qlen slen" | \
awk '$1 == 100'> "$outputfile"
perfect_match=$(wc -l < "outputfile")
echo number of perfet matches: $perfect_match

