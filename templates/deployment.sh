apiVersion: apps/v1
kind: Deployment
metadata:
  name: squid-deployment
  labels:
    app: squid
spec:
  replicas: 1
  selector:
    matchLabels:
      app: squid
  template:
    metadata:
      labels:
        app: squid
    spec:
      containers:
      - name: squid
        image: cannedsquid:v1.0
        ports:
        - containerPort: 3128
