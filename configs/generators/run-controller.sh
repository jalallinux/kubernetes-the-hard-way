cd /app/configs

# controller configs
sh /app/configs/generators/3-kube-controller-manager.sh
sh /app/configs/generators/4-kube-scheduler.sh
sh /app/configs/generators/5-admin.sh

mv /app/configs/admin.kubeconfig ~/
mv /app/configs/kube-controller-manager.kubeconfig ~/
mv /app/configs/kube-scheduler.kubeconfig ~/