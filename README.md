


# cloud-native-kube
In this project I've used terraform to configure an AKS (Azure Kubernetes Service) cluster and deployed an event-based microservice application in it. 

** Use this link as a tutorial [Use Azure API Management with microservices deployed in Azure Kubernetes Service](https://learn.microsoft.com/en-us/azure/api-management/api-management-kubernetes)  **

** The containers that this kubernetes pod will capture would be the early onset alzhiemer's containers, and the terraform script will deploy them in aks which will then be deployed using terraform **

** The ingress controller will get the json message from the azure functions api and put them in the data folder, and so yeah no need for github actions in this project, but it could be needed in the c# one ** 

** also create seperate branches for terraform prototyping different parts of this project such as Azure API management, AKS, etc. **

** finally the UML diagram for this will be comprehensive combining the system design of this repository, [cloud native frontend repository](https://github.com/ataul-ui/dot-net-containers), and [distributed data pipeline repository](https://github.com/ataul-ui/backend-early-alzheimers)   **



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

