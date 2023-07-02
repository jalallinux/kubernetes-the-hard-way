FROM ghcr.io/jalallinux/laravel:php-82

COPY certificate-generators certificate-generators

RUN apt-get update \
    && wget --show-progress --https-only --timestamping \
        https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \
        https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 \
        https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl \
    && chmod +x kubectl cfssl_linux-amd64 cfssljson_linux-amd64 \
    && mv cfssl_linux-amd64 /usr/local/bin/cfssl \
    && mv cfssljson_linux-amd64 /usr/local/bin/cfssljson \
    && mv kubectl /usr/local/bin/kubectl \
    && sh certificate-generators/1-ca.sh \
    && sh certificate-generators/2-admin.sh \
    && sh certificate-generators/3-workers.sh \
    && sh certificate-generators/4-kube-controller-manager.sh \
    && sh certificate-generators/5-kube-proxy.sh \
    && sh certificate-generators/6-kube-scheduler.sh \
    && sh certificate-generators/7-api-server.sh \
    && sh certificate-generators/8-service-account-key-pair.sh
