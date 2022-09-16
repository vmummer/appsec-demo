# Check Point CloudGuard AppSec demo
 
 This is a simple docker-compose environment for deploy a Check Point AppSec embedded nano-agent demo on Windows WSL and Docker.  
 It will deploy three containers, an NGINX reverse proxy, an agent-container (the nano-agent) and the OWASP JuiceShop app.  

You will have two ways to access the stack:  
* Port 80: Protected by AppSec  
* Port 3000: Direct to JuiceShop (unprotected)  
  
## Instructions:
 
* Clone the repository
* From a machine with docker and docker-compose installed, run:  
```
Edit cp/cp_alias file and changed the following (vi cp/cp_alias):
 export TOKEN=<your agent token>
Save file

source cp/cp_alias
cplab_cert 
docker-compose down -v --remove-orphans
docker-compose build
docker-compose up
```
[DEMO HERE]

cplab_trg http://juiceshop.local   Use to generate good traffic - This just does a simple crawl of the Juiceshop website
cplab_trb http://juiceshop.local   Use to generate questionable traffic on the Juiceshop website

```
docker-compose down
```
 


> Notes: 
 
