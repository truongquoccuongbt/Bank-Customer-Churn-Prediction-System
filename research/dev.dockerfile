FROM ubuntu:latest

RUN apt update
RUN apt install python3 python3-pip -y

WORKDIR /src

COPY requirements.txt ./


RUN pip3 install -r requirements.txt --break-system-packages
RUN pip3 install jupyterlab --break-system-packages
EXPOSE 8888


CMD ["jupyter", "lab","--port=8888","--ip=0.0.0.0","--allow-root", "--NotebookApp.token='1234'"]


