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

COPY ./services/chunk_customer /src/

CMD ["fastapi", "run", "main.py", "--host", "0.0.0.0","--port", "8000"]

EXPOSE 8000
