# Provision an EC2 instance in AWS
This Terraform configuration provisions an EC2 instance in AWS.

## Details
By default, this configuration provisions a Ubuntu 14.04 Base Image AMI (with ID ami-2e1ef954) with type t2.micro in the ap-northeast-2 region. The AMI ID, region, and type can all be set as variables. You can also set the name variable to determine the value set for the Name tag.

Note that you need to set environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY.
If you want to set environment variable AWS_ACCESS_KEY_ID and AWS_SECRETE_ACCESS_KEY, you have to delete the access_key and secret_key in main.tf and variables.tf.
