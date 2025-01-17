module "claybox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "elias.jaderlund+lz-test_claybox@gmail.com"
    AccountName               = "claybox-aft"
    ManagedOrganizationalUnit = "ATF"
    SSOUserEmail              = "elias.jaderlund+lz-test_claybox@gmail.com"
    SSOUserFirstName          = "Claybox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "monitored" = "false"
    "costcenter" = "HR"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "claybox"
}
