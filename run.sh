NAME=payara-micro-ping
docker kill ${NAME}
docker rm ${NAME}
docker run -d -p 7780:8080 --name payara-micro-ping  platzerworld/payara-ping