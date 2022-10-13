FROM python:3.8-slim
MAINTAINER Vince Mammoliti vincem@checkpoint.com
# Sept 14, 2022
RUN apt-get update && apt-get upgrade -y && apt-get install apt-transport-https ca-certificates git -y
RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org  beautifulsoup4 certifi chardet idna lxml psutil redis redislite requests soupsieve urllib3  zmq selenium hashids
RUN update-ca-certificates  &&  export GIT_SSL_NO_VERIFY=true && git config --global http.sslVerify false
RUN git clone https://github.com/vmummer/web-scraper.git /home/web-scraper &&  git clone https://github.com/vmummer/juice-shop-solver.git /home/juice-shop-solver
#COPY solutions.py /home/juice-shop-solver/solutions.py
