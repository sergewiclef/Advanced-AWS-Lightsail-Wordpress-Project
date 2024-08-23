variable "region" {
  type    = string
  default = "us-east-1"
}

variable "availability_zone" {
    type = string
    default = "us-east-1a"
  
}

variable "instance" {
    type = string
    default = "wordpress-blog"
  }

variable "static_ip" {
    type = string
    default = "wordpress-IP"  
}

variable "blueprint_id" {
    type = string
    default = "wordpress"    
}

variable "bundle_id" {
    type = string
    default = "nano_3_0"
  
}



