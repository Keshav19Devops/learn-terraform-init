resource "aws_iam_user" "user_admin" {
    name = "keshav"
    tags = {
        Description = "Devops lead"
    }
  
}

resource "aws_iam_policy" "useradmin" {
    name = "AdminUsers"
    policy = <<EOF
     {
        "Version": "2012-10-17",
        "Statment": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]
     }
     EOF
  
}

resource "aws_iam_user_policy_attachment" "keshav-admin-access" {
    user = aws_iam_user.user_admin.name
    policy_arn = aws_iam_policy.useradmin.arn
  
}