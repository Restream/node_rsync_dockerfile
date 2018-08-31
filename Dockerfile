FROM node:8.9.4
RUN npm i -g yarn
RUN apt-get update && \
    apt-get -y install rsync apt-utils && \
    apt-get -y remove apt-utils && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*
