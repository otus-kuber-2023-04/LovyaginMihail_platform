# LovyaginMihail_platform

- [Назад, к оглавлению](../README.md)

## lisson 4
В рамках проведения работ было сделано: 
1. Поднял kind кластер. 
2. Выполнил команды для натсройки прав доступа в Kubernetes
    1. kubectl apply -f ./kubernetes-security/task01/01-ServiceAccount-bob.yml
    2. kubectl apply -f ./kubernetes-security/task01/02-RoleBinding-bob.yml
    3. kubectl apply -f ./kubernetes-security/task01/03-ServiceAccount-dave.yml
    4. kubectl apply -f ./kubernetes-security/task02/01-Namespace-prometheus.yaml
    5. kubectl apply -f ./kubernetes-security/task02/02-ServiceAccount-carol.yaml
    6. kubectl apply -f ./kubernetes-security/task02/03-role-pod-reader.yaml
    7. kubectl apply -f ./kubernetes-security/task02/04-RoleBinding-prometheus.yaml
    8. kubectl apply -f ./kubernetes-security/task03/01-Namespace-dev.yaml
    9. kubectl apply -f ./kubernetes-security/task03/02-ServiceAccount-jane.yaml
    10. kubectl apply -f ./kubernetes-security/task03/03-RoleBinding-jane.yaml
    11. kubectl apply -f ./kubernetes-security/task03/04-ServiceAccount-ken.yaml
    12. kubectl apply -f ./kubernetes-security/task03/05-RoleBinding-ken.yaml
3. Проврил, что все создалось kubectl get serviceaccounts
4. Удалил kind кластер. 




