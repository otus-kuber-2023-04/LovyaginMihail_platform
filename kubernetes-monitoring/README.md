# LovyaginMihail_platform

- [Назад, к оглавлению](../README.md)

## lisson 6
В рамках проведения работ было сделано: 
1. Сделал и залил на dockerhub images `lovyaginmihail/otus_nginx_images:0.0.3`
2. Проверил, на локальной машине, что он отвечает на url-ы
    1. http://localhost:8000
    2. http://localhost:8000/basic_status
3. Поднял kind cluster. `kind create cluster`
4. Сделал NameSpace. `kubectl apply -f ./01-Namespace-prometheus.yaml`
5. Сделал Deployment nginx `kubectl apply -f ./02-Deployment-nginx.yml`
6. Сделал Service `kubectl apply -f ./03-Service-svc-nginx.yml`
7. Проводим тест, как работает `kubectl -n prometheus port-forward service/nginx 8001:80`
    1. curl http://localhost:8001/basic_status
8. Сделал Deployment nginx-prometheus-exporter 'kubectl apply -f ./04-Deployment-exporter.yml'
9. Проводим тест, как работает `kubectl -n prometheus port-forward pods/nginx-prometheus-exporter-5674cff55c-nsr4d 8002:9113`
    1. curl http://localhost:8002/metrics
10. 'kubectl -n prometheus apply -f ./05-Service-exporter.yml'
11. Настройка `prometheus-operator`:
    1. Добавляем репозиторий - `helm repo add prometheus-community https://prometheus-community.github.io/helm-charts`
    2. Обновляем репозиторий - `helm repo update`
    3. Смотрим valus - `helm show values prometheus-community/kube-prometheus-stack > ./06-helm-prometheus-operator-values.yml`
    4. Устанавливаем prometheus-operator - `helm install prometheus-operator -n prometheus -f ./06-helm-prometheus-operator-values.yml prometheus-community/kube-prometheus-stack`
12. Проводим тест, как работает:
    1. `kubectl -n prometheus port-forward service/prometheus-operator-kube-p-prometheus 8004:9090` 
        1. http://localhost:8004/alerts?search=
    2. `kubectl -n prometheus port-forward service/prometheus-operator-grafana 8003:80`
        1. Узнаем пароль Администратора - `kubectl -n prometheus get secret prometheus-operator-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo`
        2. http://localhost:8003/login
