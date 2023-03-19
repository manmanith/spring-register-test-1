#!/bin/bash

cat << EOF > /home/dara/kubernetes/register-app.yml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: register-deploy
spec:
  replicas: 1
  selector:
    matchLabels:
      app: register-app
  template:
    metadata:
      labels:
       app: register-app
    spec:
      containers:
        - name: register-cont
          image: xeng/register-k8s:$1
          ports:
            - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: register-svc
spec:
  type: NodePort
  selector:
    app: register-app
  ports:
    - port: 8080
      targetPort: 8080
      nodePort: 38080
      
EOF

# Deploy with kubernetes
kubectl apply -f /home/dara/kubernetes/register-app.yml
