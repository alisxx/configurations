helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
    --version="4.8.3" \
    --namespace=openstack \
    --set controller.kind=Deployment \
    --set controller.admissionWebhooks.enabled="false" \
    --set controller.scope.enabled="true" \
    --set controller.service.enabled="false" \
    --set controller.ingressClassResource.name=nginx \
    --set controller.ingressClassResource.controllerValue="k8s.io/ingress-nginx" \
    --set controller.ingressClassResource.default="false" \
    --set controller.ingressClassResource.enabled=true \
    --set controller.ingressClass=nginx \
    --set controller.labels.app=ingress-api

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
    --version="4.8.3" \
    --namespace=exponentify \
    --set controller.kind=Deployment \
    --set controller.admissionWebhooks.enabled="false" \
    --set controller.scope.enabled="true" \
    --set controller.service.enabled="false" \
    --set controller.ingressClassResource.name=nginx \
    --set controller.ingressClassResource.controllerValue="k8s.io/ingress-nginx" \
    --set controller.ingressClassResource.default="false" \
    --set controller.ingressClassResource.enabled=true \
    --set controller.ingressClass=nginx \
    --set controller.labels.app=ingress-api


helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
--namespace namespaceA \
--set controller.ingressClassResource.name=nginx-namespaceA \
--set controller.ingressClass=nginx-namespaceA \
--set controller.ingressClassResource.controllerValue="k8s.io/ingress-nginx-namespaceA" \
--set controller.ingressClassResource.enabled=true \
--set controller.ingressClassByName=true
