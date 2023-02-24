# Сборка приложения в DOCKER с помощью Jenkins pipeline

 - [ZERO TO HERO](#Сборка-приложения-в-DOCKER-с-помощью-Jenkins-pipline)
   - [What](#what)
   - [Linux (bash/zsh)](#linux-bashzsh)
     - [Docker (with bash)](#Docker-bash)
     - [Jenkins (with bash)](#macos-with-bash)

## What

В данном разделе привиден пример составления pipeline Jenkins for push docker images in docker.hub.



## Linux (bash/zsh)

### Docker

```
Установка репозитория

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Установка DOCKER

sudo apt-get update

sudo chmod a+r /etc/apt/keyrings/docker.gpg

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl status docker

```
### Jenkins

```
iptables -I INPUT -p tcp --dport 8080 -j ACCEPT

apt install iptables-persistent

netfilter-persistent save

apt install default-jdk

update-alternatives --config java

apt-get install gnupg2

vi /etc/apt/sources.list.d/jenkins.list

deb https://pkg.jenkins.io/debian-stable binary/

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

apt install ca-certificates

apt-get update

systemctl enable jenkins

Открываем браузер и переходим по адресу http://<IP-адреса сервера Jenkins>:8080 — откроется окно «Unlock Jenkins». В нем будет путь до файла, в котором нужно взять парольную фразу для разблокировки портала:

cat /var/lib/jenkins/secrets/initialAdminPassword   полученный результат вбиваем в строчку веб морды

Выбираем левый пункт настройки плагинов после установки создаем Вашего первого пользователя пользователя

```
