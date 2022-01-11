## Docker

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

sudo docker run --name linux_alpine --rm -i -t alpine:3.12.1 sh

sudo docker exec -it <id> sh

sudo docker run --name "servidor_web" -d -p 8080:80 -e NGINX_ENTRYPOINT_QUIET_LOGS=1 
            -v "/home/luis/www/courses/udemy/docker-curso/volumes:/usr/share/nginx/html" nginx:1.19.4

sudo docker build -f Dockerfile -t username/image_name:v1 .

sudo docker run --name "servidor_web" -d -p 8080:80 servido_web:v1

sudo docker run --rm alpine:3.12.1 sh -c "ifconfig"

sudo docker network ls

sudo docker network inspect <name>

sudo docker run --name "container_1_bridge" -d alpine:3.12.1 sleep 5000

## Docker Compose

sudo docker-compose build

sudo docker-compose up -d

sudo docker-compose down

# Container Docker com o Mysql
sudo docker run --name mysqldb -e MYSQL_ROOT_PASSWORD=1234 -p "3306:3306" -d mysql

# Container Docker Com Mysql e Volume Local
sudo docker run --name mysqldb -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v /home/luis/dev/db/mysql:/var/lib/mysql -d mysql

# Container Docker com o PostgreSQL
sudo docker run --name postgresdb -e "POSTGRES_PASSWORD=1234" -p 5432:5432 -v /home/luis/dev/db/postgresql:/var/lib/postgresql/data -d postgres
