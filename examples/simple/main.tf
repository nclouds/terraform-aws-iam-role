# Create an IAM Role
module "example_role" {
  source                = "../../"
  identifier            = "${var.identifier}-role"
  trusted_role_services = ["ec2.amazonaws.com"]
}
