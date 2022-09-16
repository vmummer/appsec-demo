ehco "Fetches Certsecho "Fetching Docker certs  to fix x509: certificate signed by unknown authority ERROR"
update-ca-certificates --fresh
openssl s_client -showcerts -verify 5 -connect registry-1.docker.io:443 < /dev/null 2>/dev/null | openssl x509 -outform
PEM | tee ~/docker.crt
openssl s_client -showcerts -verify 5 -connect production.cloudflare.docker.com:443 < /dev/null 2>/dev/null | openssl x5
09 -outform PEM | tee ~/docker-com.crt
cp ~/docker*.crt /usr/local/share/ca-certificates/
update-ca-certificates
echo "\nNOTE: >>>>> Restart Docker to accept new Certs <<<<<"
