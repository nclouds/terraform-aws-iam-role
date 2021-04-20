locals {
  urls = [
    for url in compact(distinct(concat(var.provider_urls, [var.provider_url]))) :
    replace(url, "https://", "")
  ]

  assume_role_policy = length(var.oidc_fully_qualified_subjects) > 0 ? data.aws_iam_policy_document.oidc.json : data.aws_iam_policy_document.default.json
}