
ataul:


## run the terraform 
To run the terraform run these bash commands
```bash
terraform plan -var serviceprinciple_id=$SERVICE_PRINCIPAL \
    -var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
    -var tenant_id=$TENTANT_ID \
    -var subscription_id=$SUBSCRIPTION
```

## pull the rabbitmq image
This will pull the rabbitmq image to use
```bash
docker pull rabbitmq

```


THIS WILL BE A MULTI-CONTAINER POD, AKA A POD WITH CONSUMER, PUBLISHER AND RABBITMQ CONTAINERS




just write a golang app instead of the fastapi app, i'll need to focus on kube in this project not containers

after creating the containers upload them to the azure docker registry so that aks can use it later on
provide instructions on how to do that on readme


create a rabbitmq docker thing for learning about it before moving on to kubernetes, follow this tutorial:
https://www.youtube.com/watch?v=hfUIWe1tK8E&t=1s&ab_channel=ThatDevOpsGuy 
^^ also instead of creating a fastapi container, create a golang app using the 
code that devops guy uses


the app.py file will be the container thing

create the azure container registry using terraform and make sure it is in the same resource group as 
aks and the virtual network

or maybe i only need to have same resource for container instance only, in that case container registry can be in another resource group

I rabbitmq container will handle communication between 3 other containers, basically look at this video:
https://www.youtube.com/watch?v=nFxjaVmFj5E&ab_channel=Amigoscode

this is an event bassed microservices container thing project

follow this tutorial: https://www.youtube.com/watch?v=_lpDfMkxccc&ab_channel=ThatDevOpsGuy 


project i am doing:

Building a scalable messaging infrastructure using RabbitMQ: 

You can use RabbitMQ with Kubernetes to create a scalable and fault-tolerant messaging infrastructure. You can use Terraform to deploy RabbitMQ on Kubernetes and manage the desired state of RabbitMQ resources.







Use kubernetes in some way in this projects.

Use argoCD instead of github actions maybe







THIS WILL BE AN ENTIRELY AZURE CLOUD FOCUSED APP. NO NEED TO USE STREAMLIT OR ANY OTHER VENDOR NEUTRAL APP HERE.

