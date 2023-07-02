cd /app/configs

# worker configs
sh /app/configs/generators/1-kubelet.sh
sh /app/configs/generators/2-kube-proxy.sh

mv /app/configs/kube-proxy.kubeconfig ~/
for instance in worker-1 worker-2 worker-3; do
  mv /app/configs/${instance}.kubeconfig ~/
done