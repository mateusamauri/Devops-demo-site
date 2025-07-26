variable "ami_id" {
     type = string
     default = "ami-0c55b1e5d9794f7d0"
   }

variable "instance_type" {
     type = string
     default = "t2.micro"
   }

variable "key_name" {
     type = string
     default = "my-ssh-key"
   }

variable "bucket_name" {
  type    = string
  default = "S3Bucket"
  }

variable "iam_user_name"{
  type    = string
  default = "IAM-User"
  }