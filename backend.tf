terraform {
  backend "s3" {
    bucket         = "lalit-project-9-terraform-backend"   # <-- Replace with your bucket
    key            = "web-app-infra/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-locks"              # <-- Optional for state locking (recommended)
    encrypt        = true
  }
}