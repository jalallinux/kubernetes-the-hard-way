FROM ghcr.io/jalallinux/laravel:php-82

COPY . .

RUN apt-get update \
    && apt-get install bash-completion \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
    && rm kubectl \
    && echo '' >> ~/.bashrc \
    && echo '# k8s customization' >> ~/.bashrc \
    && echo 'source /usr/share/bash-completion/bash_completion' >> ~/.bashrc \
    && echo 'alias k=kubectl' >> ~/.bashrc \
    && echo 'complete -o default -F __start_kubectl k' >> ~/.bashrc

RUN sh configs/generators/run-worker.sh