terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.14.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#Create a static IP address for the Lightsail instance

resource "aws_lightsail_static_ip_attachment" "static_ip_attachment" {
  instance_name = "Wordpress-blog"
  static_ip_name = "Wordpress-IP"
}

resource "aws_lightsail_static_ip" "static_ip" {
  name = "Wordpress-IP"
}

#create a a Lightsail instance
resource "aws_lightsail_instance" "wordpress_instance" {
  name = "Wordpress-blog"
  blueprint_id = "wordpress"
  availability_zone = "us-east-1a"
  bundle_id = "micro_3_0"
  tags = {
    Environment = "My Personal Blog"
    
  }
}