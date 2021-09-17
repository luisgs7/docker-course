sudo docker container ls

sudo docker images || sudo docker image ls

sudo docker ps

sudo docker ps -a

sudo docker container start <id>

sudo docker pull postgres:13.1 # Especificar a versão da imagem

sudo docker image rm <id>

sudo docker image inspect <id> 

sudo docker image tag postgres:13.1 docker-course

sudo docker image rm <id> -f

sudo docker run -d -p 8080:80 nginx:1.19.4-alpine