FROM alpine:latest

RUN apk add curl git bind-tools busybox-extras jq 

ENV BASE_URL=https://get.helm.sh

ENV TAR_FILE=helm-v3.9.2-linux-amd64.tar.gz

RUN curl -L ${BASE_URL}/${TAR_FILE} |tar xvz &&     mv linux-amd64/helm /usr/bin/helm &&     chmod +x /usr/bin/helm

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl
    
CMD export PATH=/usr/local/bin/

CMD ["/bin/sh"]


    
    

