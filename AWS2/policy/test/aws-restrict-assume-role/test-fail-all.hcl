# --- Results --- #
test {
  rules = {
    main = false
  }
}

# --- Mocks --- #  Insert mocks here matching each files

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-v2-fail-all.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-v2-fail-all.sentinel"
  }
}

mock "tfrun" {
  module {
    source = "mock-tfrun-fail-all.sentinel"
  }
}

# --- Functions --- #
module "aws-functions" {
  source = "../../../functions/aws-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../../functions/tfconfig-functions.sentinel"
}
