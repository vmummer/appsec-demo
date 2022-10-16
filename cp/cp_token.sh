#/usr/bin/bash
echo "cp_token - Allow for updating TOKEN= value and also updating value in cp/cp_alias"
if [[ $PWD =~ .*appsec-demo/cp ]];then
        echo "cp_token is required to be run from <....>/appsec-demo root directory"
        exit 1
fi
if [ -z "$1" ]; then
        echo "Usage  cp_token  <Check Point AppSec TOKEN from Infinity AppSEC portal>"
        echo ""
        if [[ $TOKEN ]]; then
                echo "TOKEN varable is set to TOKEN=$TOKEN"
        fi
        exit 1
else
        sed -i 's/TOKEN=.*/TOKEN='$1'/' cp/cp_alias
        export TOKEN=$1
        echo "TOKEN varable is set to:  TOKEN=$TOKEN, and value is updated in cp/cp_alias script"
fi
