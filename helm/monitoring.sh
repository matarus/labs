#/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install prometheus prometheus-community/kube-prometheus-stack --namespace=monitoring --create-namespace
kubectl port-forward svc/prometheus-grafana -n monitoring 3000:80

