output "instance_id"{
  value = aws_instance.web_server.id
}

output "bucket_name"{
  value = aws_s3_bucket.poject_bucket.bucket
}

output "iam_user_name"{
  value = aws_iam_user.dev_user.name
}