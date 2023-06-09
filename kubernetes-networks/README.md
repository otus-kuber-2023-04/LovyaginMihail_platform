# LovyaginMihail_platform

- [Назад, к оглавлению](../README.md)

## lisson 3
В рамках проведения работ было сделано: 
1. Подняли pod с web сервером. 
2. Сделали livenessProbe. 
3. Подняли Deployment c web сервером. 
4. Протестировали различные стратегии обновления Deployment-а. 
5. Подняли Service c ClusterIP
6. Включили IPVS
7. Настроили LoadBalancer
    1. Настроили MetalLB. 
    2. Написали свой сервис с типом LoadBalancer, чтобы он работал через настроенный MetalLB. 
    3. Проверили, что все работает. 
8. Настроили DNS через MetalLB
    1. Написали манифест, который пробрасывает DNS сервер из сластера по внешний мир. по порту 53 TCP/UDP.
9. Настроили  Ingress
    1. Настроили ingress-controller
    2. Написали моницесты для настройки сервисов. 
    3. Создали Headless-сервис.
    4. Создали правила ingress. 
10. Настроили Ingress для Dashboard
    1. Подняли Dashboard, через команду minikube dashboard.
    2. Написали моницест настройки правила ingress. 




