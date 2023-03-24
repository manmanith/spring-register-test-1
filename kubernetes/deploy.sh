#!/bin/bash

cat << EOF > /home/dara/kubernetes/register-app.yml

apiVersion: apps/v1
kind: Deployment
metadata:
 name: register-deployment
spec:
 replicas: 2
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
         image: xeng/spring-register:$1
         ports:
           - containerPort: 8080
         volumeMounts:
           - name: register-vol
             mountPath: /src/main/resources/images
     volumes:
         - name: register-vol
           nfs:
             server: 10.148.0.12
             path: /opt/nfs/data
---
apiVersion: v1
kind: Service
metadata:
 name: register-svc
spec:
 type: ClusterIP
 selector:
   app: register-app
 ports:
   - port: 8080
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: nginx-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /\$1/\$2
spec:
  rules:
    - host: register.e-crops.co
      http:
        paths:
          - path: /spring/(.+)
            pathType: Prefix
            backend:
              service:
                name: register-svc
                port:
                  number: 8080
EOF

# Deploy with kubernetes
kubectl apply -f /home/dara/kubernetes/register-app.yml
