cd /app/configs

# worker configs
sh /app/configs/generators/1-kubelet.sh
sh /app/configs/generators/2-kube-proxy.sh

mv /app/configs/worker-1.kubeconfig ~/
mv /app/configs/kube-proxy.kubeconfig ~/