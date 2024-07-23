# https://github.com/terraform-linters/tflint-ruleset-google#installation
plugin "google" {
  enabled = true
  version = "0.30.0" # renovate: depName=terraform-linters/tflint-ruleset-google
  source  = "github.com/terraform-linters/tflint-ruleset-google"
}

# https://github.com/terraform-linters/tflint/tree/master/docs/rules
rule "terraform_deprecated_index" {
  enabled = true
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_comment_syntax" {
  enabled = true
}

rule "terraform_documented_outputs" {
  enabled = true
}

rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}

rule "terraform_naming_convention" {
  enabled = true
}

rule "terraform_required_version" {
  enabled = true
}

rule "terraform_required_providers" {
  enabled = true
}

rule "terraform_standard_module_structure" {
  enabled = false
}
