terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
}
required_version = ">=0.13"
backend "s3" {
        key = "terraform.tfstate"
        bucket = "terraformomarqouqasdemo" //create your own unique S3 bucket
}
}
