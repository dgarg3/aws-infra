/*resource "aws_glue_job" "inventory-process" {
  name     = "inventory-process"
  role_arn = aws_iam_role.example.arn

  command {
    script_location = "s3://${aws_s3_bucket.example.bucket}/example.py"
  }
}*/