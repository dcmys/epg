FROM node:20

# # update dependencies and install curl
# RUN apt-get update && apt-get install -y \
#     curl \
#     && rm -rf /var/lib/apt/lists/*
# Create app directory
WORKDIR /app

# update each dependency in package.json to the latest version
RUN git clone --depth 1 -b master https://github.com/iptv-org/epg.git .
RUN npm install

COPY . /app
EXPOSE 3000
CMD [ "echo", "1" ]
