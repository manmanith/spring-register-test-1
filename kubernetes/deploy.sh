#!/bin/bash

cat << EOF > /opt/register-deploy.yml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: register-deploy
spec:
  replicas: 3
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
          image: xeng/kube-register:1.1.1
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
      nodePort: 30003
EOF

kubectl apply -f /opt/register-deploy.yml
