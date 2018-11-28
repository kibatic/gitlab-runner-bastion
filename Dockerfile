FROM gitlab/gitlab-runner:v11.5.0

RUN curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&\
    install /tmp/docker-machine /usr/local/bin/docker-machine
