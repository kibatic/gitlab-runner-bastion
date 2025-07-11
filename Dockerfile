FROM gitlab/gitlab-runner:v18.1.1

# use of gitlab docker machine : https://gitlab.com/gitlab-org/ci-cd/docker-machine
RUN curl -O "https://gitlab-docker-machine-downloads.s3.amazonaws.com/v0.16.2-gitlab.38/docker-machine-Linux-x86_64"
RUN cp docker-machine-Linux-x86_64 /usr/local/bin/docker-machine
RUN chmod +x /usr/local/bin/docker-machine
