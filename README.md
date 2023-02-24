# Сборка приложения в DOCKER с помощью Jenkins pipeline

 - [ZERO TO HERO](#Сборка-приложения-в-DOCKER-с-помощью-Jenkins-pipline)
   - [What](#what)
   - [Linux](#linux-bashzsh)
     - [Docker (with bash)](#Docker)
     - [Jenkins (with bash)](#Jenkins)
   - [So, what is next ?](#So-,-what-is-next-?)
   - [Все о Docker](#Все-о-Docker)
     - [Основы Docker](#Теория-Docker)
     - [Архитектура](#Основые-компоненты)

## What

Приложение springboot-hello было фокрнуто из https://github.com/VanAbsenter/springboot-hello.git, для обучения работы с процессами CI/CD.

В данном разделе привиден пример составления pipeline Jenkins for push docker images in docker.hub.



## Linux bash/zsh

### Docker

```
Установка репозитория

sudo apt-get update #Обновляем состав устанолвенных пакетов 

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg  #Ключ для работы с официальным репозиторием Docker  (дергаем из ранее созданной папки по пути  /etc/apt/keyrings)

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null     #Настройка репозитория

Установка DOCKER

sudo apt-get update

sudo chmod a+r /etc/apt/keyrings/docker.gpg

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y  #Установка всего необходимо из ранее добавленного репозитория докер

sudo systemctl start docker #Запуск

sudo systemctl enable docker #Добавление в загрузчик 

```
### Jenkins

```
iptables -I INPUT -p tcp --dport 8080 -j ACCEPT     #Доступность портов 80 с помощью firewall iptables если его нет, sudo apt-get install iptables

apt install iptables-persistent

netfilter-persistent save

apt install default-jdk

update-alternatives --config java

apt-get install gnupg2   #Выполняем только если получаем ошибка о том что модуль не найден 

vi /etc/apt/sources.list.d/jenkins.list
deb https://pkg.jenkins.io/debian-stable binary/ #Первую строчку открываем, вторую добавляем это репозиторий 

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -    #Импорт ключей для доступа к репозиторию

apt install ca-certificates #Выполняем только если получаем ошибку

apt-get update

systemctl enable jenkins #Разрешаем автозапуск сервиса 

Открываем браузер и переходим по адресу http://<IP-адреса сервера Jenkins>:8080 — откроется окно «Unlock Jenkins». В нем будет путь до файла, в котором нужно взять парольную фразу для разблокировки портала:

cat /var/lib/jenkins/secrets/initialAdminPassword   полученный результат вбиваем в строчку веб морды

Выбираем левый пункт настройки плагинов после установки создаем Вашего первого пользователя пользователя

```

## So, what is next ?

После произведенных установок пришло время узнать, что такое Docker и Jenkins.

## Все о Docker

### Теория Docker

```
Docker — программное обеспечение для автоматизации развёртывания и управления приложениями
в средах с поддержкой контейнеризации, контейнеризатор приложений.
Операционная система: Linux, Microsoft Windows, macOS и Unix-подобная операционная система

```
### Основные компоненты

```




![QWE](main/images/RES.PNG)





```
