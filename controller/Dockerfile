FROM ghcr.io/jalallinux/laravel:php-82

COPY . .

RUN apt-get update \
    && wget --show-progress --https-only --timestamping \
        https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \
        https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 \
        https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl \
    && chmod +x kubectl cfssl_linux-amd64 cfssljson_linux-amd64 \
    && mv cfssl_linux-amd64 /usr/local/bin/cfssl \
    && mv cfssljson_linux-amd64 /usr/local/bin/cfssljson \
    && mv kubectl /usr/local/bin/kubectl \
    && sh certificates/generators/run.sh \
    && sh configs/generators/run-controller.sh \
    && sh configs/generators/encryption-config.sh \
    && sh configs/generators/encryption-config.sh
