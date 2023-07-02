cd /app/certificates

sh /app/certificates-generator/1-ca.sh
sh /app/certificates-generator/2-admin.sh
sh /app/certificates-generator/3-workers.sh
sh /app/certificates-generator/4-kube-controller-manager.sh
sh /app/certificates-generator/5-kube-proxy.sh
sh /app/certificates-generator/6-kube-scheduler.sh
sh /app/certificates-generator/7-api-server.sh
sh /app/certificates-generator/8-service-account-key-pair.sh