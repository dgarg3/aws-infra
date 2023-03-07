resource "aws_iam_role" "inventory_process_role" {
  name = "inventory_process_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "glue.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
resource "aws_iam_policy_attachment" "inventory-process-attach" {
  name       = "inventory-attachment"
  roles      = [aws_iam_role.inventory_process_role.name]
 policy_arn = aws_iam_policy.admin_policy.arn
}


