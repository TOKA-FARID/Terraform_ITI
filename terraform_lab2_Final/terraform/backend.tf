terraform {
  backend "s3" {
    bucket         = "te-bucket-1"
    #key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-lock-table"
  }
}