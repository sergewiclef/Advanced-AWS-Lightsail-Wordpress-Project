### Advanced Lightsail Web Server configuration using Terraform Project

This is Part 2 of the Lightsail Web Server configuration using Terraform. You can go to [Part 1](https://github.com/sergewiclef/AWS_Lightsail_wordpress_project) for more information. 

From the basic configuration, we will add the following features:

  1. Using variables when creating different components
  2. Configure AWS Route 53 and SSL
  3. Configure snapshot for data recovery

We will now proceed with the configuration. We will briefly explain code as we go along.

### 1. Using variables when creating different components.

We used variables for each component instead of directly defining values in the main.tf file. For example, we replaced the code below in the main.tf with the code below it from variables.tf

![image](https://github.com/user-attachments/assets/65390fda-5684-4f9e-a341-7aed46c3982d)

![image](https://github.com/user-attachments/assets/2b896d2f-e5ac-48f2-9e53-1edc0f77cfda)

### 2. Configure AWS Route 53 and SSL


### 3. Configure snapshot for data recovery




 



