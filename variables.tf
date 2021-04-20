variable "identifier" {
  description = "Name for the resources"
  type        = string
}

variable "description" {
  description = "Description for the IAM role"
  default     = "Created by terraform"
  type        = string
}

variable "aws_service_principal" {
  description = "The service principal allowed to assume this role. Example: 'ec2.amazonaws.com'"
  type        = string
}

variable "iam_policies_to_attach" {
  description = "List of ARNs of IAM policies to attach"
  default     = []
  type        = list(string)
}

variable "provider_urls" {
  description = "List of URLs of the OIDC Providers"
  type        = list(string)
  default     = []
}

variable "oidc_fully_qualified_subjects" {
  description = "The fully qualified OIDC subjects to be added to the role policy"
  type        = set(string)
  default     = []
}

variable "tags" {
  description = "Tags to be applied to the resource"
  default     = {}
  type        = map
}
