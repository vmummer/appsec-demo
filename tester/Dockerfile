FROM ubuntu
MAINTAINER Vince Mammoliti vincem@checkpoint.com
RUN apt-get update
RUN apt-get upgrade -y git python3-minimal python3-pip
RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org  beautifulsoup4 certifi chardet idn
a lxml psutil redis redislite requests soupsieve urllib3
RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org  zmq selenium
RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org hashids
RUN apt-get install apt-transport-https ca-certificates -y
RUN update-ca-certificates
RUN export GIT_SSL_NO_VERIFY=true
RUN git config --global http.sslVerify false
RUN git clone https://github.com/vmummer/web-scraper.git /home/web-scraper
RUN git clone https://github.com/vmummer/juice-shop-solver.git /home/juice-shop-solver
RUN ls -la /home/web-scraper/* && ls -la /home/juice-shop-solver
