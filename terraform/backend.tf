terraform {
  backend "s3" {
    bucket         = "twin-terraform-state-078237422485" # Must match your actual S3 bucket
    key            = "digital-twin/terraform.tfstate"         # The path/name of the state file
    region         = "eu-west-3"                             # Your AWS region
    encrypt        = true
    dynamodb_table = "terraform-state-lock"                  # Optional: If you set up state locking
  }
}