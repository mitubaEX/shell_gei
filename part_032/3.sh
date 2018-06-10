cat /etc/services | awk '{ print $2 }' | awk -F '/' '{ print $1 }' | grep '^[0-9]*$' | xargs gfactor | awk -F ':' '{ print $1 }'

