# --- modules --- #
module "aws-functions" {
  source = "../functions/aws-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../functions/tfconfig-functions.sentinel"
}

# --- policies --- #
policy "aws-restrict-assume-role" {
  source            = "../policy/aws-restrict-assume-role.sentinel"
  enforcement_level = "hard-mandatory"
}