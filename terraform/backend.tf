
# State file stored in S3, locking handled by DynamoDB

terraform {
  backend "s3" {
    bucket         = "rock-of-ages-image-storing-bucket-gjv"  # update this 
    key            = "lambda/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "rock-of-ages-terraform-locks" 
    encrypt        = true
  }
}