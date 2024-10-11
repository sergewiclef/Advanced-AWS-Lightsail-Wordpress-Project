variable "region" {
  type    = string
  default = "us-east-2"
}

variable "availability_zone" {
    type = string
    default = "us-east-2a"
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

variable "blog_zone" {
    type = string
    default = "mywordpressexample.com"
  
}

variable "domain_name" {
    type = string
    default = "mywordpressexample.com"
  }
variable "domain_name_www" {
    type = string
    default = "www.mywordpressexample.com"
  }

variable "email" {
  type = string
  default = "sergewiclef@gmail.com"
  
}


