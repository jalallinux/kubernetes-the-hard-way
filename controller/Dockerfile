FROM ghcr.io/jalallinux/laravel:php-82

COPY . .

RUN apt-get update \
    && wget --show-progress --https-only --timestamping \
        https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \
        https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 \
        https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl cfssl_linux-amd64 cfssljson_linux-amd64 \
    && mv cfssl_linux-amd64 /usr/local/bin/cfssl \
    && mv cfssljson_linux-amd64 /usr/local/bin/cfssljson \
    && mv kubectl /usr/local/bin/kubectl

RUN sh certificates/generators/run.sh
