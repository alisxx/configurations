kubectl create -f https://raw.githubusercontent.com/metallb/metallb/v0.14.9/config/manifests/metallb-native.yaml

kubectl apply -f metallb_ipaddresspool.yaml

kubectl apply -f metallb_l2advertisement.yaml 

#cloud ingress-nginx, sub for bare metal
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/cloud/deploy.yaml
