terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.14.0"
    }
  }
}

provider "aws" {
  region = var.region
}

#Create a static IP address for the Lightsail instance

resource "aws_lightsail_static_ip_attachment" "static_ip_attachment" {
  instance_name = var.instance
  static_ip_name = var.static_ip
}

resource "aws_lightsail_static_ip" "static_ip" {
  name = var.static_ip
}

#create a a Lightsail instance
resource "aws_lightsail_instance" "wordpress_instance" {
  name = var.instance
  blueprint_id = var.blueprint_id
  availability_zone = var.availability_zone
  bundle_id = var.bundle_id
  
  tags = {
    Environment = "My Personal Blog"
    
  }
}
