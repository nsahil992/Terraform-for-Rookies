provider "aws" {
  region = "ap-south-1"  
}

# Create an IAM user
resource "aws_iam_user" "admin-user" {
  name = "Terraform-user"
  tags = {
    Description = "Test IAM user for Terraform"
  }
}

resource "aws_iam_user_policy_attachment" "attach-ec2-policy" {
  user       = aws_iam_user.admin-user.name 
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

