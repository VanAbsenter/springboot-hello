# Сборка приложения в DOCKER с помощью Jenkins pipline

 - [ZERO TO HERO](#Сборка-приложения-в-DOCKER-с-помощью-Jenkins-pipline)
   - [What](#what)
   - [Quick start](#quick-start)
   - [Linux (bash/zsh)](#linux-bashzsh)
   - [Install](#install)

## What


## Quick start


### Linux (bash/zsh)

```
apt-get update

apt-get install     ca-certificates     curl     gnupg     lsb-release

 mkdir -p /etc/apt/keyrings


curl -fsSL https://download.docker.com/linux/debian/gpg |  gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.dock                                                                                                                          er.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update

chmod a+r /etc/apt/keyrings/docker.gpg

apt-get update


apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


```
