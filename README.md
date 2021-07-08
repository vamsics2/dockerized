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
- submit a Pull request to the repo https://github.com/vamsics2/dockerized
- Navigate to public ip http://54.149.18.208/ and see the container running.

### Push to github repo -> Continous integration will helps to build the docker image -> Continous deployment will helps to deploy the code into EC2 instance -> verify your container running at publicip:80

We can verify the updated container by altering the index.html to reflect any changes at EC2 public IP with port 80.

1. Before terraform ![image](https://user-images.githubusercontent.com/39087062/124859821-2a3f9880-dfce-11eb-98eb-05806a023267.png)
2. After terraform ![image](https://user-images.githubusercontent.com/39087062/124859892-4e9b7500-dfce-11eb-8fcd-ac03239035d7.png)
![image](https://user-images.githubusercontent.com/39087062/124859965-77bc0580-dfce-11eb-911e-afeb272eb965.png)![image](https://user-images.githubusercontent.com/39087062/124860084-adf98500-dfce-11eb-9566-f8665bfcf378.png)
![image](https://user-images.githubusercontent.com/39087062/124860130-c5d10900-dfce-11eb-8860-994f2c1691b4.png)

-------------------
1. CI CD by GitHub actions ![image](https://user-images.githubusercontent.com/39087062/124860300-09c40e00-dfcf-11eb-84c8-08c538aba50d.png)
2. Before updating index.html nginx serving at port 80 ![image](https://user-images.githubusercontent.com/39087062/124862867-c4eea600-dfd3-11eb-974f-69eedae88ac5.png) ![image](https://user-images.githubusercontent.com/39087062/124863005-fb2c2580-dfd3-11eb-8cfc-0bcd6328a840.png)![image](https://user-images.githubusercontent.com/39087062/124863051-0ed78c00-dfd4-11eb-9455-a879051b2a35.png)
3. After updating the index.html ![image](https://user-images.githubusercontent.com/39087062/124864452-89091000-dfd6-11eb-8048-4bf083015798.png)
![image](https://user-images.githubusercontent.com/39087062/124864491-9c1be000-dfd6-11eb-9ee1-bffaf17fefc9.png)
![image](https://user-images.githubusercontent.com/39087062/124864505-a342ee00-dfd6-11eb-855c-97d792fdbe70.png)



