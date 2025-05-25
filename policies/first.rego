package main
 
import future.keywords.in
 
deny[msg] {
  some r in input.resource_changes
  r.type == "aws_s3_bucket"
  r.change.after.acl == "public-read"
  msg := "S3 bucket is public!"
}