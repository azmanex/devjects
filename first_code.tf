provider "aws" {
 profile = "default"
 region ="us-east-1"
}
resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-20200615"
  acl= "private"
}

