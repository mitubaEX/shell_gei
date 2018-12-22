# cat 2.md | sort
# ?

# mitubaEX/shell_gei - [master|+|*] > echo "a\nb\nc" | awk '{print /a/?1:/b/?2:3}'
# 1
# 2
# 3

cat 2.md | gawk '/第/{n=gensub(/[^0-9]+/,"", "g");print n, 0, $0}!/第/{print n, /福岡/?1:/大阪/?2:3, $0}' | sort -k1,2n
cat 2.md | gawk '/第/{n=gensub(/[^0-9]+/,"", "g");print n, 0, $0}!/第/{print n, /福岡/?1:/大阪/?2:3, $0}' | sort -k1,2n | sed 's/.....//'
