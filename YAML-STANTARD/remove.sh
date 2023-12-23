kubectl delete -n standard hpa hpa-fastapi
kubectl delete -n standard deployments fastapi-deployment
kubectl delete -n standard deployments adminbdd-deployment
kubectl delete -n standard statefulset bdd-statefulset
kubectl delete -n standard pvc exam-kub-pvc
kubectl delete -n standard service bdd-statefulset
kubectl delete -n standard service adminbdd-deployment
kubectl delete -n standard service fastapi-deployment
kubectl delete namespace standard