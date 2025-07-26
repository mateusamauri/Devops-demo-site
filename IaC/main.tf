terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
}

# Create a EC2 Instance
resource "aws_instance" "web_server" {

  ami                    = var.ami_id 
  instance_type          = var.instance_type
  key_name               = var.key_name
  tags = {
       Name = "EC2Instance"
     }
   
}

#Create a S3 Bucket
resource "aws_s3_bucket" "poject_bucket"{
  bucket = var.bucket_name
  
  tags = {
       Name = "S3Bucket"
       Enviroment = "Dev"
     }

  
}

#Create a IAM user
resource "aws_iam_user" "dev_user"{
  name = var.iam_user_name

 tags = {
     Purpose = "Devops Testing"
     }
  
}