terraform {
    backend "s3" {
        bucket =    "mosaab-bucket"
        key = "iti/terraform.tfstate"
        region = "us-east-2"
        encrypt = true
    }
}