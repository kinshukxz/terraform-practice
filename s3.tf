resource "aws_s3_bucket" "name" {
  bucket = "kinshuk-s3-bucket" 
  tags = {
    Name = "Kinshuk S3 Bucket"
  }
}
