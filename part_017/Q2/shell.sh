 cat data | awk '{ if( length(dic[$1" "$2]) == 0 ) {dic[$1" "$2] = NR} else { print dic[$1" "$2]" "NR }}'

 # 公式 すでにその連想配列に値が入っている場合のみ，表示されるような処理
cat data | awk 'a[$0]{print a[$0],NR,$0}{a[$0]=NR}'
