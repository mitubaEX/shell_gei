ls | while read file ;do cat $file | awk -v filename=$file '{for (i = 1; i <= NF; i++) s+=$i} END {if (s == 10) print filename}';done

# 公式
grep "" * | tr ':' ' ' | awk '{for(i=2;i<=NF;i++){a+=$i};print $1,a;a=0}' | grep " 10$"
