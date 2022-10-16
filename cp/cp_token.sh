#/usr/bin/bash
if [[ $PWD =~ .*appsec-demo/cp ]];then
        echo "cp_token is required to be run from <....>/appsec-demo root directory"
        exit 1
fi
if [[ $TOKEN ]]; then
        echo "TOKEN variable is set to \n TOKEN=$TOKEN"
        else
           echo "TOKEN variable is NOT SET!  Please set before continuing with LAB"
fi

if [ -z "$1" ]; then
        echo "Usage  cp_token         - Display curent TOKEN value" 
	echo "Usage  cp_token <TOKEN> - Set TOKEN Variable - <Check Point AppSec TOKEN copied from Infinity AppSEC portal>"
        echo ""
        exit 1
else
        sed -i 's/TOKEN=.*/TOKEN='$1'/' cpalias.sh
        export TOKEN=$1
        echo "TOKEN varable is set to:  TOKEN=$TOKEN, and value is updated in cpalias.sh script"
fi
