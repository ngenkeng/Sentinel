# --- Results --- #
test {
  rules = {
    main = true
  }
}

# --- Mocks --- #  Insert mocks here matching each files

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-v2-pass-all.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-v2-pass-all.sentinel"
  }
}

mock "tfrun" {
  module {
    source = "mock-tfrun-pass-all.sentinel"
  }
}

# --- Functions --- #
module "aws-functions" {
  source = "../../../functions/aws-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../../functions/tfconfig-functions.sentinel"
}
