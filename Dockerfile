FROM alpine/docker-with-buildx:latest

WORKDIR /app

COPY ./docker-elk /app

RUN apk update 
RUN apk add docker
RUN apk add docker-compose   
RUN apk add curl
RUN apk add openrc
# RUN service docker start
RUN rc-update add docker
# RUN rc-update add docker-compose
# RUN rc-service docker start
# RUN rc-service docker-compose start

# Install dependencies
RUN apk add --no-cache \
    py3-pip \
    py3-setuptools \
    py3-wheel

RUN apk add python3 py3-pip
RUN pip3 install docker-compose
RUN pip3 install docker
# RUN pip3 install 
# RUN rc-update add docker default 
# RUN /etc/init.d/docker start
# RUN curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose


# apk update
# apk add docker
# service docker start
# rc-update add docker
# apk add python3 py3-pip
# pip3 install docker-compose
# docker-compose --version

# RUN ./usr/local/bin/docker-compose up -d 
# RUN docker-compose up -d 

ENTRYPOINT [ "sh" ]