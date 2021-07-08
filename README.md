## Technical assessment Teraform/CICD
------------------------
### The Tasks includes
- Create terraform script for provisioning a Linux EC2 instance with port 80 exposed to internet.
- Create a Docker file for nginx container.
- CI CD Pipeline using GitHub Actions to build and deploy the container into Linux EC2 VM.
- Crupdate the ReadME :)

## Terraform Script (main.tf)
The main.tf includes the code to provision a Linux EC2 VM, the ingress rules defined to expose traffic via port 80 to internet. The below 3 resources will be created.
- Security group to define ingress and outgress
- EC2 instance with ubuntu image which is assigned with security group created above.
- An AWS key pair to allow us to SSH into the VM created

The steps to run this is :
```
terraform init
terraform plan
terraform apply
```
## Docker file (Dockerfile)
The Dockerfile contains the skeleton for downloading an nginx image and copying a index.html page to serve to client

## CI CD Pipeline
Continous Integration and Continous deployment is achieved with the help of github actions.
The required configuration is already in place all you have to do is just push your changes to main branch. So that the GitHub action ll be triggered to fire CI and CD jobs sequentially.
As and when there is a change in repository code, The action will fire and build the docker image with the **Dockerfile**. Updated image will be deployed into EC2 instance through *application, deployments and deployment groups* This is achieved with the help of **AWS CodeDeploy**.
Push to github repo -> Continous integration will helps to build the docker image -> Continous deployment will helps to deploy the code into EC2 instance.

We can verify the updated container by altering the index.html to reflect any changes at EC2 public IP with port 80.

1. Before terraform ![image](https://user-images.githubusercontent.com/39087062/124859821-2a3f9880-dfce-11eb-98eb-05806a023267.png)
2. After terraform ![image](https://user-images.githubusercontent.com/39087062/124859892-4e9b7500-dfce-11eb-8fcd-ac03239035d7.png)
![image](https://user-images.githubusercontent.com/39087062/124859965-77bc0580-dfce-11eb-911e-afeb272eb965.png)![image](https://user-images.githubusercontent.com/39087062/124860084-adf98500-dfce-11eb-9566-f8665bfcf378.png)
![image](https://user-images.githubusercontent.com/39087062/124860130-c5d10900-dfce-11eb-8860-994f2c1691b4.png)

-------------------
1. CI CD by GitHub actions ![image](https://user-images.githubusercontent.com/39087062/124860300-09c40e00-dfcf-11eb-84c8-08c538aba50d.png)
2. Before updating index.html nginx serving at port 80


