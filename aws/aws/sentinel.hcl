module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  source = "./enforce-ec2-mandatory-tags.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "./require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-iam-policy-actions" {
  source = "./restrict-iam-policy-actions.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-ingress-sg-rule-rdp" {
  source = "./restrict-ingress-sg-rule-rdp.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-ingress-sg-rule-ssh" {
  source = "./restrict-ingress-sg-rule-ssh.sentinel"
  enforcement_level = "hard-mandatory"
}
