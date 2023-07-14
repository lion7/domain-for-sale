# Domain For Sale Landing Page

I created a free webpage template to sale your domain.
It's fast, efficient and a potential purchaser can email you through this free template.

## To Use 
You can clone this & host the `public` folder on your own server.
Read the instructions below if you want to host in a Docker container / Kubernetes cluster.

Be aware that you need to change certain elements in `public/index.html`:
- The domain price 
- Your own email address and phone number

## To Build
To build and push your customized Docker image to GitHub Container Registry:
```bash
docker build -t ghcr.io/<YOUR-GH-USERNAME>/domain-for-sale:latest .
docker push ghcr.io/<YOUR-GH-USERNAME>/domain-for-sale:latest
```

## To Deploy
If you are using Kubernetes to host this, you first need to change:
- Domain in `deployment/ingress.yaml`
- Image in `deployment/deployment.yaml` (obviously, build and push the image first)

Deploying is done with:
```bash
kubectl apply -k deployment/
```
