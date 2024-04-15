kubectl apply -f ../config/env-configmap.yaml
kubectl apply -f ../config/env-secret.yaml
kubectl apply -f ../config/aws-secret.yaml

kubectl apply -f ../deployment/backend-feed-deployment.yaml
kubectl apply -f ../deployment/backend-user-deployment.yaml
kubectl apply -f ../deployment/reverseproxy-deployment.yaml

kubectl apply -f ../service/backend-feed-service.yaml
kubectl apply -f ../service/backend-user-service.yaml
kubectl apply -f ../service/reverseproxy-service.yaml