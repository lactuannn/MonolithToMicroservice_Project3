kubectl delete services reverseproxy
kubectl delete services backend-user
kubectl delete services backend-feed

kubectl delete deployment backend-feed
kubectl delete deployment backend-user
kubectl delete deployment reverseproxy