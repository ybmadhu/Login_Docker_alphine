FROM alpine:3.7

MAINTAINER ybmsr <ybmadhu404@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apk add --update bash

#RUN apk add nodejs

RUN apk add --update nodejs nodejs-npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
