FROM gitlab/gitlab-runner:v11.5.0

RUN curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&\
    install /tmp/docker-machine /usr/local/bin/docker-machine &&\
    # Install scaleway driver
    curl -sL https://github.com/scaleway/docker-machine-driver-scaleway/releases/download/v1.6/docker-machine-driver-scaleway_1.6_linux_amd64.tar.gz -O &&\
    tar vxf docker-machine-driver-scaleway_1.6_linux_amd64.tar.gz &&\
    rm docker-machine-driver-scaleway_1.6_linux_amd64.tar.gz &&\
    install docker-machine-driver-scaleway /usr/local/bin/docker-machine-driver-scalewayss
