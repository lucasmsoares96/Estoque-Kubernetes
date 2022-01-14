# Estoque Kubernetes

## Dependencias

```
git
docker
minikube
flutter
```

## Como Executar:

### Configurar o ambiente Kubernetes

```
git clone https://github.com/lucasmsoares96/Estoque-Kubernetes.git
cd Estoque-Kubernetes
cd kubernetes

minikube start --nodes 3
kubectl apply -f .
minkube service frontend-service
```

e copie o ip e a porta fornecidos

### Configurar o frontend da aplicação

```
cd ../frontend
```

agora edite o arquivo .env, adionando o ip e a porta obtidos

```
flutter run
```

