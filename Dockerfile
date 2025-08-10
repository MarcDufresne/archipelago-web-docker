FROM python:3.12-slim

RUN apt update \
  && apt install -y git tk build-essential \
  && apt clean

WORKDIR /

RUN mkdir /db

ADD Archipelago Archipelago

WORKDIR /Archipelago

RUN find . -name "requirements.txt" -exec xargs pip install --no-cache-dir -r {} \; \
  && python ModuleUpdate.py -y -f

# Port range for Archipelago rooms
ARG MIN_PORT=50000
ARG MAX_PORT=50100

RUN sed -i "s/49152/${MIN_PORT}/" WebHostLib/customserver.py \
  && sed -i "s/65535/${MAX_PORT}/" WebHostLib/customserver.py

CMD ["python", "WebHost.py"]
