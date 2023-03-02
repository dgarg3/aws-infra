variable "region" {
 type        = string
 description = "region for AWS services"
 default     = "us-east-1"
}

variable "bucket_name" {
 type        = string
 description = "S3 Bucket Name"
 default     = "stream-poc-bucket"
}

variable "environment" {
 type        = string
 description = "environment"
 default     = "sandbox"
}



