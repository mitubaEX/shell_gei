cat data1 | awk  '{ dic[$1] = dic[$1]" "$2} END { for( i in dic ) { print i dic[i] } }'


## 公式
cat data1 | awk '{d[$1]=d[$1]" "$2}END{for(k in d){print k d[k]}}'

cat data1 | awk '{d[$1]=d[$1]" "$2}END{for(k in d){print k d[k]}}' |
 awk -v q='"' '{printf q$1q":[";for(i=2;i<=NF;i++){printf $i","};print "]"}' |
 xargs | tr ' ' ',' | awk '{print "{"$0"}"}' | sed 's/,]/]/g'
