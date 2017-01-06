#CentOS 7 + Oracle Java 8

##Reference Docker file
https://github.com/sequenceiq/hadoop-docker

## Last Version
- java: **1.8.0_111**

## Installation
```sh
docker pull prographerj/centos7-java8:latest
```

## Running
To simply run the container:
```sh
docker run -i -t --rm --name java8 prographerj/centos7-java8:latest /bin/bash
```
