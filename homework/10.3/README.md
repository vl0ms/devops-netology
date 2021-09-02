# Домашнее задание к занятию "10.03. Grafana"

## Обязательные задания

### Задание 1
Используя директорию [help](./help) внутри данного домашнего задания - запустите связку prometheus-grafana.

Зайдите в веб-интерфейс графана, используя авторизационные данные, указанные в манифесте docker-compose.

Подключите поднятый вами prometheus как источник данных.

Решение домашнего задания - скриншот веб-интерфейса grafana со списком подключенных Datasource.

![grafana](1.png)

## Задание 2

Создайте Dashboard и в ней создайте следующие Panels:
- Утилизация CPU для nodeexporter (в процентах, 100-idle)

    `100 - avg(irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100`

- CPULA 1/5/15

    `node_load1, node_load5, node_load15 - CPULA 1/5/15`

- Количество свободной оперативной памяти

    `node_memory_MemAvailable_bytes /1048576`

- Количество места на файловой системе

    `node_filesystem_avail_bytes{fstype!='tmpfs'} / node_filesystem_size_bytes * 100`

Для решения данного ДЗ приведите promql запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.

![dash](2.png)

## Задание 3
Создайте для каждой Dashboard подходящее правило alert (можно обратиться к первой лекции в блоке "Мониторинг").

Для решения ДЗ - приведите скриншот вашей итоговой Dashboard.

![alerts](3.png)

## Задание 4
Сохраните ваш Dashboard.

Для этого перейдите в настройки Dashboard, выберите в боковом меню "JSON MODEL".

Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его.

В решении задания - приведите листинг этого файла.

[ссылка на json](https://github.com/vl0ms/devops-netology/tree/main/homework/10.3/dashboard.json "json file for dashboard")