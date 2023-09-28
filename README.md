


# cloud-native-kube
In this project, I've used terraform to configure an AKS (Azure Kubernetes Service) cluster and deployed an event-based microservice application in it.



## Requirements
Make sure you have terraform and azure cli installed. And save the following values as environment variables in your system
```bash
SERVICE_PRINCIPAL = 'your azure app_id'
SERVICE_PRINCIPAL_SECRET = 'your azure password'
TENTANT_ID = 'your tenant id'
SUBSCRIPTION = 'you azure subscription'
```


## How to deploy the system

First you'll need to clone this repository:
```bash
git clone https://github.com/ataul-ui/cloud-native-kube.git 
```

Then you'll need to type these commands:
```bash
terraform init

terraform plan -var serviceprinciple_id=$SERVICE_PRINCIPAL \
    -var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
    -var tenant_id=$TENTANT_ID \
    -var subscription_id=$SUBSCRIPTION

terraform apply -var serviceprinciple_id=$SERVICE_PRINCIPAL \
    -var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
    -var tenant_id=$TENTANT_ID \
    -var subscription_id=$SUBSCRIPTION
```

Type 'yes' when the prompt asks and eventually you'll have a kubernetes cluster running an event-based microservice deployed in your azure cloud.

To destroy the system type
```bash
terraform destroy 
```

