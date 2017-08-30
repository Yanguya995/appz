# use a node base image
FROM node:7-onbuild
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
# set maintainer
LABEL maintainer "njabulo@getintodevops.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:3000 || exit 1

# tell docker what port to expose
EXPOSE 3000
