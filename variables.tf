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
  description = "The service principal allowed to assume this role. Example: 'ec2.amazonaws.com'. Not needed if using oidc"
  default     = ""
  type        = string
}

variable "iam_policies_to_attach" {
  description = "List of ARNs of IAM policies to attach"
  default     = []
  type        = list(string)
}

variable "provider_urls" {
  description = "List of URLs of the OIDC Providers"
  default     = []
  type        = list(string)
}

variable "oidc_fully_qualified_subjects" {
  description = "The fully qualified OIDC subjects to be added to the role policy"
  default     = []
  type        = set(string)
}

variable "tags" {
  description = "Tags to be applied to the resource"
  default     = {}
  type        = map(any)
}

variable "append_workspace" {
  description = "Appends the terraform workspace at the end of resource names, <identifier>-<worspace>"
  default     = true
  type        = bool
}

variable "principal_type" {
  description = "Principal type to be used i.e. Service, AWS"
  default     = "Service"
  type        = string
}
