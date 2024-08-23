### Lightsail Web Server built using Terraform Project

This is a simple project to create and deploy a new Wordpress lightsail web server using Terraform

#### What is Lightsail? 

Amazon Lightsail is a simplified cloud service provided by Amazon Web Services (AWS). It offers an easy way to launch and manage virtual private servers (VPS), databases, and other resources. Lightsail is known for its predictable pricing and user-friendly interface, making it an ideal choice for those new to cloud services

#### What is Terraform?

Terraform is an open-source tool developed by HashiCorp for building, changing, and versioning infrastructure safely and efficiently. It uses a declarative configuration language to define infrastructure as code (IaC), allowing you to manage cloud and on-premises resources in a consistent and repeatable manner. Trraform is widely used for its ability to automate infrastructure provisioning and management. 

Please redraft below text for a blog

#### The deployment process

Before we dive into the deployment process, ensure that Terraform and AWS CLI are installed in your environment. This guide does not cover the installation steps for these tools.

We have created the following Terraform files for this deployment.

##### main.tf

First, we need to define the provider, which in this case is AWS. We also specify the region where our resources will be created, which is the us-east-1 AWS region.

![image](https://github.com/user-attachments/assets/a76a5b34-3c3e-43de-b3d8-265b849bcbc0)

Next, we create a static IP for the Lightsail server and the Lightsail server itself. The static IP creation involves two steps: creating the static IP and associating it with the Lightsail instance.

For the Lightsail server, we need to configure the following minimum features:

Instance Name: The name of the instance.
Blueprint ID: A template to use, such as WordPress, Joomla, Magento, etc. In our case, we are using WordPress.
Bundle ID: The performance specification, which corresponds to the size of the Lightsail server.
There are many other features you can configure, but they are not covered here.

This is a basic way to create a Lightsail server instance. In subsequent projects, we will cover more advanced features and methods, including using Terraform variables, DNS configuration, instance firewall ports management, and more.

![image](https://github.com/user-attachments/assets/78c95650-679f-442e-9879-ae5942b4b01a)

##### output.tf

The code below output the instance static IP address after successfull deployment of the lightsail server. This would allow us to know which IP to use to access our website. 

![image](https://github.com/user-attachments/assets/1ae13935-0d96-4ab1-863e-5e3452462de5)

Thank you for following along!
 



