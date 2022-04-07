<p align="left"><img width=400 height="100" src="https://www.nclouds.com/img/nclouds-logo.svg"></p>  

![Terraform](https://github.com/nclouds/terraform-aws-iam-role/workflows/Terraform/badge.svg)
# nCode Library

## AWS Identity and Access Management Role (IAM Role) Terraform Module

Terraform module to provision [`IAM Role`](https://aws.amazon.com/iam/) on AWS.

## Usage

### Setup

Create a IAM Role.
```hcl
    module "example_role" {
        source      = "app.terraform.io/ncodelibrary/iam-role/aws"
        version     = "0.2.2"
        description = "Example IAM Role"
        iam_policies_to_attach = [
            "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
            "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
        ]
        aws_service_principal = "ec2.amazonaws.com"
        identifier            = "example-role"
        tags                  = {
            Owner       = "sysops"
            env         = "dev"
            Cost_Center = "XYZ"
        }
    }
```

## Examples
Here are some working examples of using this module:
- [`examples/`](examples/)


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_iam_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) |
| [aws_partition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| append\_workspace | Appends the terraform workspace at the end of resource names, <identifier>-<worspace> | `bool` | `true` | no |
| aws\_service\_principal | The service principal allowed to assume this role. Example: 'ec2.amazonaws.com'. Not needed if using oidc | `string` | `""` | no |
| description | Description for the IAM role | `string` | `"Created by terraform"` | no |
| iam\_policies\_to\_attach | List of ARNs of IAM policies to attach | `list(string)` | `[]` | no |
| identifier | Name for the resources | `string` | n/a | yes |
| oidc\_fully\_qualified\_subjects | The fully qualified OIDC subjects to be added to the role policy | `set(string)` | `[]` | no |
| provider\_urls | List of URLs of the OIDC Providers | `list(string)` | `[]` | no |
| tags | Tags to be applied to the resource | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| output | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing
If you want to contribute to this repository check all the guidelines specified [here](.github/CONTRIBUTING.md) before submitting a new PR.
