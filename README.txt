How to store terraform state file remotely (in this example on AWS S3)

Pre-requisites for following along:

Docker should be pre-installed and accessible via default Terraform docker provider mechanism
Terraform binary version should be greater than or equal to 0.13.
AWS CLI should be installed.
You will also need AWS Access Key and AWS Secret Access Key for configuring your AWS CLI profile used by S3 backend and ensure that your credentials allow you to create , upload and download objects from S3 buckets. As an alternate in lieu of AWS hardcoded credentials IAM roles can also be used.

Be sure to create an S3 bucket and plug in its name into the bucket field in the backend.tf file