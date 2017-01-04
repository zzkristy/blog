##### docker学习笔记
1. 在ubuntu 14.04下安装docker 参考：https://docs.docker.com/engine/installation/linux/ubuntulinux/
2. 检验安装结果 ```sudo docker run hello-word```
3. 为非root用户授权 
```
sudo groupadd docker   创建docker用户组
sudo gpasswd -a $USER docker 添加用户到docker组，需重启生效
```
4. 镜像管理
```
docker images  查看本地镜像
docker pull ubuntu:14.04 获取镜像
修改已有镜像
docker commit -m 'add gcc' -a 'kristy' 1c1081110c4a ubuntu:gcc  提交更新后的镜像   -m 指定说明信息  -a 指定更新的用户信息  容器ID 仓库名和tag
```
5. 容器管理
```
docker run -t -i ubuntu:gcc /bin/bash   运行镜像
docker ps -a 查看容器状态
docker start cont-ID  启动容器
docker stop cont-ID  停止容器
```

