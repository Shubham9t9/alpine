FROM alpine:latest
CMD ["tail -f /dev/null"]
RUN apk add curl git bind-tools busybox-extras jq 
ENV BASE_URL=https://get.helm.sh
ENV TAR_FILE=helm-v3.9.2-linux-amd64.tar.gz
RUN curl -L ${BASE_URL}/${TAR_FILE} |tar xvz &&     mv linux-amd64/helm /usr/bin/helm &&     chmod +x /usr/bin/helm


