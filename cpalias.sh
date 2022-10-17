#/usr/bin/bash
export TOKEN=cp-us-e4d7e1ca-c542-4b98-ae6e-ebb4e80d3bf3d1909eb0-de4c-4326-b44c-fe102899578
echo "Adding Check Point AppSec Lab Alias Commands.  Use cp_help for list of commands"
DOCKER_HOST="`hostname -I| awk ' {print $1}'`"
alias cptrbad='docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST -w /home/juice-shop-solver appsec-demo_test-host python main.py'
alias cptrgood='docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST appsec-demo_test-host python /home/web-scraper/websitescrap.py'
alias cpnano='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano'
alias cpuninstall='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano --uninstall'
alias cpagenttoken='docker exec -it cp-appsec-agent-container ./cp-nano-agent --token $TOKEN'
alias cptoken="bash cp/cp_token.sh"
alias cpcpnanol='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano -s |grep Last' 
alias cpwipe='docker-compose down &&  docker system prune -a'
alias cpcert='sh cp/cp_get_cert.sh'
alias cpfetch='git  config --global http.sslverify false && git clone https://github.com/vmummer/appsec-demo.git'
alias cphost='printf "Docker Host IP address used: $DOCKER_HOST \n"'
alias cphelp='printf "Check Point Lab Commands:\n
cpnano        Show detail status of AppSec Agent ( use as cpnano -s)
cpnanol       Show last update of the AppSec Agent
cpuninstall   Uninstall AppSec Agent
cpagenttoken  Install AppSec Agent and assign Token
cptoken       Display and update AppSec Agent Token Variable
cpcert        Fetch Cert required to load docker images
cptrbad       Juiceshop Bad  Traffic Generator
cptrgrood     Juiceshop Good Traffic Generator
cpwipe        Wipeout all Docker containers and required to pull new images
cpfetch       Fetches Clone from GitHub Lab Files appsec-demo.git
cphost        Shows the IP address of the Docker Host used
cphelp        Alias Command to help with Check Point Lab
"'
