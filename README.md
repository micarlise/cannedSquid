
# cannedSquid

A forward proxy for any of your services in kubernetes. 

## Who this project is for 

* you need traffic from a subset of pods to have a static IP (allow list)
* you don't run a service mesh, such as istio
* you don't want to create a static proxy outside of k8s

## How this proxy works 

The helm chart deploys squid in a pod.  Your services will be able to use the
proxy via k8s service discovery.  

## How to install the proxy into your cluster 

### Running the proxy

Install the helm chart just as your would install any of your local helm charts.

From the command line, you can install using:

```
helm install cannedsquid ./
```

## How do your services/pods use the proxy 

Any http/https traffic that can use a proxy

### Using curl

```
kubectl run curl-example --rm -i --image curlimages/curl \
    -- -x cannedsquid www.google.com
```
