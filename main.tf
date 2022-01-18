locals {
  identifier = var.append_workspace ? "${var.identifier}-${terraform.workspace}" : var.identifier
  default_tags = {
    Environment = terraform.workspace
    Name        = local.identifier
  }
  tags = merge(local.default_tags, var.tags)
}

resource "aws_iam_instance_profile" "profile" {
  name = local.identifier
  role = aws_iam_role.role.name
  tags = local.tags
}

resource "aws_iam_role" "role" {
  force_detach_policies = true
  assume_role_policy    = local.assume_role_policy
  description           = var.description
  name                  = local.identifier
  tags                  = local.tags
}

resource "aws_iam_role_policy_attachment" "attach" {
  count = length(var.iam_policies_to_attach)

  policy_arn = element(var.iam_policies_to_attach, count.index)
  role       = aws_iam_role.role.name
}
