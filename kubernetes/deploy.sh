#!/bin/bash

cat << EOF > ./reactjs-app.yml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: reactjs-deploy
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reactjs-app
  template:
    metadata:
      labels:
       app: reactjs-app
    spec:
      containers:
        - name: reactjs-cont
          image: xeng/kube-reactjs:$1
          ports:
            - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: nginx-svc
spec:
  type: NodePort
  selector:
    app: reactjs-app
  ports:
    - port: 80
      targetPort: 80
      nodePort: 30002
      
EOF >>
