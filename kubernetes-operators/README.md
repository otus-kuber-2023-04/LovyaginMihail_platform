# LovyaginMihail_platform

- [Назад, к оглавлению](../README.md)

## lisson 7
В рамках проведения работ было сделано: 
1. Установил кластер - `kind create cluster`
2. Сделал CRD - `kubectl apply -f ./deploy/crd.yml`
3. Сделал `kind: MySQL` - `kubectl apply -f ./deploy/cr.yml`
4. Проверка:
    1. `kubectl get crd`
    2. `kubectl get mysqls.otus.homework`
    3. `kubectl describe mysqls.otus.homework mysql-instance`
5. Попробовал поднять pod c mysql-operator:
    1. `kubectl apply -f deploy/service-account.yml`
    2. `kubectl apply -f deploy/deploy-operator.yml`
    3. `kubectl apply -f deploy/role.yml`
    4. `kubectl apply -f deploy/role-binding.yml`

