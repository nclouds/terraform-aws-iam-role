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

# Create an IAM Role with an OIDC Provider
module "external_dns_role" {
  source = "../"

  oidc_fully_qualified_subjects = ["system:serviceaccount:kube-system:external-dns"]
  iam_policies_to_attach = [
    "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ]
  provider_urls = ["https://oidc.eks.us-west-2.amazonaws.com/id/xxxxxxxxxxxxxxxxxxx"]
  identifier    = "${var.identifier}-oidc"
  tags          = var.tags
}