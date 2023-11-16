resource "aws_s3_bucket" "example" {
  bucket = "rhoribe-test-bucket222"

  tags = {
    Name        = "rhoribe-test-bucket222"
    Environment = "Dev"
  }
}



terraform {
  backend "s3" {
    bucket         = var.bucket
    key            = var.key
    region         = var.region
    encrypt        = true
  }
}



