
ataul:


## run the terraform 
To run the terraform run these bash commands
```bash
terraform plan -var serviceprinciple_id=$SERVICE_PRINCIPAL \
    -var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
    -var tenant_id=$TENTANT_ID \
    -var subscription_id=$SUBSCRIPTION
```

the app.py file will be the container thing

build a simple container and upload it to dockerhub

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



THIS IS PROJECT NOW, AMAZING IDEA, azure vision service creates a description, then the description gets routed to dalle or midjourney, which then returns an image, (I don't think I wanna bother with streamlit for this one). All of this will be deployed using terraform.

dalle e api link: https://openai.com/blog/dall-e-api-now-available-in-public-beta



basically show off how familiar I am with azure cloud services with this project. Y'know configure a few networking stuff, maybe some frontend stuff as well, (use terraform to make all this possible), then like deploy this or something. Definitely include this in the resume.


The passwords and secrets and stuff will be stored in the azure key vault.


I'll use terraform to configure all the azure cloud stuff. And I'll use github actions to automatically set it up.

making changes testing

writing again
ONe more test

the conda environment for this is "machine"

testing one thing too

I'll need to install requirements.txt file here

I'll be using the custom vision thing to distinguish between different objects,
what kind of objects? I don't know yet, but I'll figure it out as this project 
progresses
