kubectl delete cm db-secret-credentials
kubectl delete deployment postgresdb
kubectl delete pvc db-persistent-pvc2
kubectl delete pv postgresdb-pv2


kubectl delete service postgresdb
