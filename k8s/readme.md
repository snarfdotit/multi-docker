# Some kuber stuff
For creating a "Secret" object:
- kubectl create secret generic pgpassword --from-literal POSTGRESS_PASSWORD=123456789

kubectl get secrets

# Usefull ro remeber
For https, use "Lets Encrypt" free CA provider https://letsencrypt.org/

On Kubernetes, use https://github.com/jetstack/cert-manager

# Skaffold
Using Skaffold to run in developement

 skaffold dev
