terraform {
       required_providers {
           aws = {
           source = "hashicorp/aws"
          
}

}

}

provider "aws" {
 	region = "ap-south-1" 
}

resource "aws_instance" "my_ec2" {
      ami = "ami-06f621d90fa29f6d0"
      instance_type = "t2.micro"
      tags = {
	   	Name = "terraformaws"
}
}
resource "aws_s3_bucket" "my_s3" {
	bucket = "terraform-joe-fer57"
	tags = {
	Name = "terraform-joe-fer57"
	Environment = "Dev"

}
}
output "ec2_public_ips" {
	value = aws_instance.my_ec2.public_ip
}
