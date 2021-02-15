# Create an IAM Role
module "example_role" {
  source      = "../"
  description = "Example IAM Role"
  iam_policies_to_attach = [
    "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ]
  aws_service_principal = "ec2.amazonaws.com"
  identifier            = "${var.identifier}-role"
  tags                  = var.tags
}