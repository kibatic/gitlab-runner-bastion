FROM gitlab/gitlab-runner:v15.0.0

RUN curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&\
    install /tmp/docker-machine /usr/local/bin/docker-machine
