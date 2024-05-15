FROM node:20
WORKDIR /app

RUN git clone --depth 1 -b master https://github.com/iptv-org/epg.git .
RUN npm install

COPY . /app
EXPOSE 3000
CMD [ "echo", "1" ]
