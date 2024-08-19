FROM ubuntu:23.10

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


WORKDIR /src

RUN apt-get update && apt-get install -y
RUN apt-get install -y \
    python3-dev build-essential

RUN apt-get -y install python3-pip


COPY ./services/chunk_customer/requirements.txt /src/
RUN pip3 install -r requirements.txt --break-system-packages

COPY . /src/

EXPOSE 8000
