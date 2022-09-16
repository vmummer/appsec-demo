FROM python:3.8-slim
MAINTAINER Vince Mammoliti vincem@checkpoint.com
# Sept 14, 2022
RUN apt-get update && apt-get upgrade -y && apt-get install apt-transport-https ca-certificates -y
#RUN apt-get upgrade -y git
RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org  beautifulsoup4 certifi chardet i
dna lxml psutil redis redislite requests soupsieve urllib3  zmq selenium hashids
#RUN apt-get install apt-transport-https ca-certificates -y
RUN update-ca-certificates  &&  export GIT_SSL_NO_VERIFY=true && git config --global http.sslVerify false
#RUN export GIT_SSL_NO_VERIFY=true
#RUN git config --global http.sslVerify false
RUN git clone https://github.com/vmummer/web-scraper.git /home/web-scraper &&  git clone https://github.com/vmummer/juice-shop-solver.git /home/juice-shop-solver
#RUN git clone https://github.com/vmummer/juice-shop-solver.git /home/juice-shop-solver
#RUN ls -la /home/web-scraper/* && ls -la /home/juice-shop-solver
