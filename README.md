# TerraProject
This is a learning by doing project that focuses on gaining knowledge on the IaC tool Terraform for provisioning AWS ressources. This was done by following along with the youtube video: "Complete Terraform Course - From BEGINNER to PRO! (Learn Infrastructure as Code)" made by the DevOps Directive channel


# The steps
The steps undertaken for the completion of this project are as follows (see commits to understand the changes made at each step):
1. Deploying a remote backend in an S3 bucket for storage and a DynamoDB for locking the state file. The code is contained in the /aws_backend file
2. Creating a basic web app architecture that contains these elements:
    - EC2 instances
    - S3 bucket
    - RDS instance
    - Load balancer
    - Route 53 DNS config

At this stage however the code is written in one single main.tf file and the values and passwords are hardcoded.

3. Add variables and not hardcode values and password.

4. Add a module to better organize the project.




![](./web-app/architecture.png)




# The architecture
