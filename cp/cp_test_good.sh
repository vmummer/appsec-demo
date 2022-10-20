#/usr/bin/bash
DOCKER_HOST="`hostname -I| awk ' {print $1}'`"
if [ -z "$1" ]; then
        echo "Usage  cptrgood <URL> <repeat>  - Create Good Traffic against Test Host. " 
	echo "Defaulting to Test Host URL:  http://juiceshop.local:80 and repeat 1"
	host="http://juiceshop.local:80"
	repeat=1
else
	host=$1
	repeat=$2
	if [ -z "$repeat" ]; then repeat=1 ;fi 
fi

for (( i=0; i<$repeat; ++i)); do
	loop=$(($i+1))
	echo "$loop of $repeat) Testing Against URL: $host"
	docker run -it --rm -v $(pwd)/data:/home/web-scraper/data --add-host juiceshop.local:$DOCKER_HOST appsec-demo_test-host python /home/web-scraper/websitescrap.py $host


done

