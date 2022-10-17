# Check Point CloudGuard AppSec demo using Win10/11 WSL and Docker
 
 This is an enhancement to Stuart Green's simple docker-compose environment for deploy a Check Point AppSec embedded nano-agent demo. The enhancement allows for running on Windows WSL and includes an additional Client Host for traffic generations of good and bad traffic.
  
The deployment includes four containers, an NGINX reverse proxy, an agent-container (the nano-agent), tester host with traffic generators and the OWASP JuiceShop app.
 This was based off of Stuart Green's work

You will have two ways to access the Juice Store Web Site:  
* Port 80: Protected by AppSec  
* Port 3000: Direct to JuiceShop (unprotected)  
  
## Instructions:
 
* Clone the repository
* From a machine with docker and docker-compose installed, run:  
```
Edit cpalias.sh file and added AppSec Token.  NOT Required, but will have to enter manually for every session.
 export TOKEN=<your agent token>
Save file

source cpalias.sh    << Will load in TOKEN variable and also cplab alias commands 
cpcert               << WSL does not provide CA certs - this fetches the required to build the Docker Images.
docker-compose down -v --remove-orphans
docker-compose build
docker-compose up
```
[DEMO HERE]

cphelp     - Will show alias command useful for this demo

cptrgood http://juiceshop.local:80     # Use to generate good traffic 
                                         - This just does a simple crawl of the Juiceshop website

cptrbad http://juiceshop.local:80      # Use to generate questionable traffic on the Juiceshop website

```
docker-compose down
```
 


> Notes: 
 
