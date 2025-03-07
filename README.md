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

5. Decide on the best way to manage different environments, there are 2 options:
    - Use terraform workspaces
    - Use subdirectory environments
    Because this poject is a simple one we chose the terraform workspaces, however this can be confusing when the project requires changing the environment frequently or when multiple people work on the same project.

6. In order to avoid code rot we perform tests on it. for this we use Terratest from gruntwork-io, refer to /Terratest.

7. Make sure to understand developpers workflows and best practices



![](./web-app/architecture.png)




# The architecture
