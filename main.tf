terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.65.0"
    }

    acme = {
      source  = "vancluever/acme"
      version = "~> 2.0"
    }

  }
}

provider "aws" {
  region = var.region
}

#Create a static IP address for the Lightsail instance

resource "aws_lightsail_static_ip_attachment" "static_ip_attachment" {
  depends_on = [ aws_lightsail_instance.wordpress_instance ]
  instance_name = var.instance
  static_ip_name = var.static_ip
}

resource "aws_lightsail_static_ip" "static_ip" {
  name = var.static_ip
}

#create a Lightsail instance
resource "aws_lightsail_instance" "wordpress_instance" {
  name = var.instance
  blueprint_id = var.blueprint_id
  availability_zone = var.availability_zone
  bundle_id = var.bundle_id

  tags = {
    Environment = "My Personal Blog"
    
  }
   add_on {
          snapshot_time = "06:00" 
          status        = "Enabled" 
            type        = "AutoSnapshot" 
        }
}

#Create a DNS zone
resource "aws_route53_zone" "mywordpressexample_com" {
  name = var.blog_zone
}


# Create a dns record for the blog
resource "aws_route53_record" "blog_record_example" {
  zone_id = aws_route53_zone.mywordpressexample_com.zone_id
  name = var.domain_name
  type = "A"
  ttl = "300"
  records = [aws_lightsail_instance.wordpress_instance.public_ip_address]

}

# Create a dns record for the blog - www
resource "aws_route53_record" "blog_record_example_www" {
  zone_id = aws_route53_zone.mywordpressexample_com.zone_id
  name = var.domain_name_www
  type = "A"
  ttl = "300"
  records = [aws_lightsail_instance.wordpress_instance.public_ip_address]

}

# Create ipv6 dns record for the blog
resource "aws_route53_record" "blog_record_example_ipv6" {
  zone_id = aws_route53_zone.mywordpressexample_com.zone_id
  name = var.domain_name
  type = "AAAA"
  ttl = "300"
  records = [aws_lightsail_instance.wordpress_instance.ipv6_addresses[0]]

}

# Create ipv6 dns record for the blog - www
resource "aws_route53_record" "blog_record_example_www_ipv6" {
  zone_id = aws_route53_zone.mywordpressexample_com.zone_id
  name = var.domain_name_www
  type = "AAAA"
  ttl = "300"
  records = [aws_lightsail_instance.wordpress_instance.ipv6_addresses[0]]

}

resource "aws_acm_certificate" "cert_example" {
  domain_name       = var.domain_name
  validation_method = "DNS"

    lifecycle {
    create_before_destroy = true
  }
}



