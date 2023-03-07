resource "aws_iam_policy" "admin_policy" {
  name        = "admin_policy"
  description = "policy to provide admin access dont give admin access to no one"
  path        = "/"

  policy = <<EOF
{
	"Version": "2012-10-17",
    "Statement": [
           {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ],
    "Version": "2012-10-17"
}
EOF
}

