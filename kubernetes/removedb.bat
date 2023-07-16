kubectl delete cm db-secret-credentials
kubectl delete deployment postgresdb
kubectl delete pvc db-persistent-pvc
kubectl delete pv postgresdb-pv


kubectl delete service postgresdb
