# LovyaginMihail_platform

- [Назад, к оглавлению](../README.md)

## lisson 1
В результате работы было сделано: 
1. Создан Dockerfile на базе образа `nginx:stable-alpine`. 
2. Был создан пользователь `www` с `UUID 1001`. 
3. В настройках nginx добавил запуск через пользователя `www`.
4. Сделал запуск с формирование страници `homework.html`
5. Написал монифест, который разворачивает все это в кубе. 
6. Сделал init контейнер в pod-е. 
7. Доп. задание (frontend):
    1. Собрал images из Dockerfile. 
    2. Скорректировал монифест, чтобы под работал корректно. 
