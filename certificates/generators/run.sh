cd /app/certificates

sh /app/certificates/generators/1-ca.sh
sh /app/certificates/generators/2-admin.sh
sh /app/certificates/generators/3-workers.sh
sh /app/certificates/generators/4-kube-controller-manager.sh
sh /app/certificates/generators/5-kube-proxy.sh
sh /app/certificates/generators/6-kube-scheduler.sh
sh /app/certificates/generators/7-api-server.sh
sh /app/certificates/generators/8-service-account-key-pair.sh