provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

}
resource "aws_security_group" "prod_web"{
  name= "prod_web"
  description ="Allow http and https ports inbounds and everything outbound"

  ingress{
  from_port=80
  to_port=80
  protocol="tcp"
  cidr_blocks=["0.0.0.0/0"]
  }
 ingress{
  from_port=443
  to_port=443
  protocol="tcp"
  cidr_blocks=["0.0.0.0/0"]
  }
egress{
  from_port=0
  to_port=0
  protocol=-1
  cidr_blocks=["0.0.0.0/0"]
  }
  tags={
    "terrform"="true"
    
  }


}