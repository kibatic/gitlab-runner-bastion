FROM gitlab/gitlab-runner:v11.9.2

RUN curl -L https://github.com/docker/machine/releases/download/v0.16.1/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&\
    install /tmp/docker-machine /usr/local/bin/docker-machine
