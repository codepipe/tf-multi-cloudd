Terraform Downloading and  Installation and Settingup in windows local host:
==================================================================
1. Downloading the terraform specific version and walking through the release notes on terraform versions
2. Installing and environmental path setup in windows local setup to run the terraform commands globally



Terraform connectivity for AWS Cloud and provisioning the aws services in high level
============================================================================
Pre-Requisites:
=============
1. Download and Install AWS SDK in you local host. (link to download: https://aws.amazon.com/cli/)
2. Validate the AWS SDK installed or not through termianal by running the command  --aws configure-- command
3. Create IAM User to Create a specif services to provision the services rather than providing the root credentials
       Note: allocate the permissions for IAM user either write specific services or Full Admin Permissions

provider "aws" {
    region = ""
    access_key = ""
   secret_key = ""
}

resource "aws_s3_bucket" "demo-bucket" {
  bucket = "creating-first-tfbucket"  # Replace with your desired bucket name
  acl    = "public"
}

