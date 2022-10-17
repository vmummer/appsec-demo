#/usr/bin/bash
export TOKEN=cp-us-e4d7e1ca-c542-4b98-ae6e-ebb4e80d3bf3d1909eb0-de4c-4326-b44c-fe102899578
echo "Adding Check Point AppSec Lab Alias Commands.  Use cp_help for list of commands"
DOCKER_HOST="`hostname -I| awk ' {print $1}'`"
alias cp_tr_bad='docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST -w /home/juice-shop-solver appsec-demo_test-host python main.py'
alias cp_tr_good='docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST appsec-demo_test-host python /home/web-scraper/websitescrap.py'
alias cp_cpnano='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano'
alias cp_uninstall='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano --uninstall'
alias cp_agent_token='docker exec -it cp-appsec-agent-container ./cp-nano-agent --token $TOKEN'
alias cp_token="bash cp/cp_token.sh"
alias cp_cpnanol='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano -s |grep Last' 
alias cp_wipe='docker-compose down &&  docker system prune -a'
alias cp_cert='sh cp/cp_get_cert.sh'
alias cp_fetch='git  config --global http.sslverify false && git clone https://github.com/vmummer/appsec-demo.git'
alias cp_host='printf "Docker Host IP address used: $DOCKER_HOST \n"'
alias cp_help='printf "Check Point Lab Commands:\n
cp_cpnano      Show detail status of AppSec Agent ( use as cp_cpnano -s)
cp_cpnanol     Show last update of the AppSec Agent
cp_uninstall   Uninstall AppSec Agent
cp_agent_token Install AppSec Agent and assign Token
cp_token       Display and update AppSec Agent Token Variable
cp_cert        Fetch Cert required to load docker images
cp_tr_bad      Juiceshop Bad  Traffic Generator
cp_tr_grood    Juiceshop Good Traffic Generator
cp_wipe        Wipeout all Docker containers and required to pull new images
cp_fetch       Fetches Clone from GitHub Lab Files appsec-demo.git
cp_host        Shows the IP address of the Docker Host used
cp_help        Alias Command to help with Check Point Lab
"'
