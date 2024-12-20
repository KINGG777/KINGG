resource "aws_iam_user" "iam" {
  name = "kingg"
}

resource "aws_iam_user_policy_attachment" "administator" {
  user = aws_iam_user.iam.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}




# CHARTGPT COPIED
resource "aws_iam_role" "role" {
  name               = "Admin-role-Terraform"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Action    = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com" # This means EC2 can assume the role
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "role-attach" {
  role       = aws_iam_role.role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}