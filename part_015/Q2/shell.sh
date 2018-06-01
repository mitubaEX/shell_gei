ls | awk '!match($1, /file\..$|file\..[0]$|file\...[0][0]$/) { print $1 }' | xargs rm

# 公式
ls -f | grep -v "file\\..$" | grep -v "file\\..0$" | grep -v "file\\..*00$" | xargs rm

# これでもできそう
ls | grep -v "file\..$" | grep -v "file\..0$" | grep -v "file\..*00$" | xargs rm
