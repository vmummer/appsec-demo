#/usr/bin/bash
echo "cp_token - Updating TOKEN= value and also updating value in cp/cp_alias"
echo "Usage  cp_token  <Check Point AppSec TOKEN from Infinity AppSEC portal>"
echo ""
sed -i 's/TOKEN=.*/TOKEN='$1'/' cp/cp_alias
export TOKEN=$1
echo "TOKEN varable is set to:  TOKEN=$TOKEN, and value is updated in cp/cp_alias script"
