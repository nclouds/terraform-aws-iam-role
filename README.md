# terraform-aws-iam-role

A Terraform module that creates IAM role.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_service\_principal | The service principal allowed to assume this role. Example: 'ec2.amazonaws.com' | `string` | n/a | yes |
| description | Description for the IAM role | `string` | `"Created by terraform"` | no |
| iam\_policies\_to\_attach | List of ARNs of IAM policies to attach | `list(string)` | `[]` | no |
| identifier | Name for the resources | `string` | n/a | yes |
| tags | Tags to be applied to the resource | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| output | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing
If you want to contribute to this repository check all the guidelines specified [here](.github/CONTRIBUTING.md) before submitting a new PR.
