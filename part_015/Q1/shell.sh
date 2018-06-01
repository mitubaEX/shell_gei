for i in * ;do cat $i | grep 1 | wc -l | awk -v file=$i '{ if ($1 == 0) print file}';done
ls | xargs grep -L 1

## 公式
grep -L 1 {a..d}
