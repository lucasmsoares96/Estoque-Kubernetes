# Estoque Backend

API Rest construida com [Dart](https://dart.dev/) e [Shelf](https://pub.dev/packages/shelf),

<!-- configured to enable running with [Docker](https://www.docker.com/). -->

Essa API recebe e processa requisições pelo protocolo HTTP, além de manipular o banco de dados 

## Dependecias:

 - [MariaDB](https://mariadb.org/) devidamente configurado
 - [Dart SDK](https://dart.dev/get-dart) ou [Flutter SDK](https://flutter.dev/docs/get-started/install/linux)
 - [Docker](https://www.docker.com/get-started) (opcional)

## Configuração

Configure a variável settings em `data_base.dart` com os dados do banco de dados. Os comandos SQL para a criação do banco de dados estão em `lib/databa_base.sql`.

## Executando a API

### Com o Dart SDK

Digite o seguinte comando:

```
$ dart run bin/server.dart
Server listening on port 8080
```

Em outro terminal digite:

```
$ curl http://localhost:8080
Hello, World!
```

Para manipular melhor as requisições utilize o [Insomnia](https://insomnia.rest/download)


### Com o Docker (ainda não funciona)

Digite o seguinte comando para gerar a imagem:

```
docker build -t estoque .
```

Cria um container Mariadb
```
docker run --name mariadb --net=bridge -v <FULL_PATH>/Estoque-Backend/db:/docker-entrypoint-initdb.d -p 3306 -e MYSQL_ROOT_PASSWORD=123456 -d mariadb
```

Obtenha o IP do container Mariadb
```
docker inspect <CONTAINER_ID> | grep IPAddress
```

Execute o container do estoque
```
docker run --net=bridge -p 8080:8080 -e DATABASE_IP=<DATABASE_IP> estoque
```
