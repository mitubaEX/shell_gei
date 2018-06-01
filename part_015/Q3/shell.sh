cat text1 | awk '{for ( i = 1; i <= NF ; i++) print $i}' | grep -e "^awk$" -e "^-v$" -e "^-f$" | sort | uniq -c

# 公式 -oでその単語のみを出してくれる -w で単語ごとにとる
grep -wo -e "-[a-z]" -e "awk" text1 | sort | uniq
