#/usr/bin/bash
shopt -s expand_aliases
echo "Adding Check Point AppSec Lab Alias Commands.  Use cp_help for list of commands"
chmod +x cp/*.sh
export TOKEN=
DOCKER_HOST="`hostname -I| awk ' {print $1}'`"
alias cp_tr_bad='docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST -w /home/juice-shop-solver appsec-demo_test-host python main.py'
alias cp_tr_good='docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST appsec-demo_test-host python /home/web-scraper/websitescrap.py'
alias cp_cpnano='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano'
alias cp_uninstall='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano --uninstall'
alias cp_token='docker exec -it cp-appsec-agent-container ./cp-nano-agent --token' $TOKEN
alias cp_cpnanos='docker exec -it cp-appsec-agent-container /usr/sbin/cpnano -s |grep status'
alias cp_wipe='docker-compose down &&  docker system prune -a'
alias cp_cert='sh cp/cp_get_cert.sh'
alias cp_fetch='git  config --global http.sslverify false && git clone https://github.com/vmummer/appsec-demo.git'
alias cp_host='printf "Docker Host IP address used: $DOCKER_HOST \n"'
alias cp_help='printf "Check Point Lab Commands:\n
cp_cpnano     Show detail  status of AppSec Agent (cp_cpnano -s)
cp_uninstall  Uninstall AppSec Agent
cp_token      Install AppSec Agent and assign Token
cp_cert       Fetch Cert required to load docker images
cp_tr_bad     Juiceshop Bad  Traffic Generator
cp_tr_grood   Juiceshop Good Traffic Generator
cp_wipe       Wipeout all Docker containers and required to pull new images
cp_fetch      Fetches Clone from GitHub Lab Files appsec-demo.git
cp_host       Shows the IP address of the Docker Host used
cp_help       Alias Command to help with Check Point Lab
"'