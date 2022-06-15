# resource "azuread_group" "root-owner" {
#   display_name = "mg-root-owner"
#   security_enabled = true
# }

resource "azuread_group" "abcbs-contrib" {
  display_name = "mg-ABCBS-contrib"
  security_enabled = true
}

resource "azuread_group" "abcbs-reader" {
  display_name = "mg-ABCBS-reader"
  security_enabled = true
}

resource "azuread_group" "plt-contrib" {
  display_name = "mg-plt-contrib"
  security_enabled = true
}

resource "azuread_group" "plt-reader" {
  display_name = "mg-plt-reader"
  security_enabled = true
}

resource "azuread_group" "prod-contrib" {
  display_name = "mg-prod-contrib"
  security_enabled = true
}

resource "azuread_group" "prod-reader" {
  display_name = "mg-prod-reader"
  security_enabled = true
}

resource "azuread_group" "stg-contrib" {
  display_name = "mg-stg-contrib"
  security_enabled = true
}

resource "azuread_group" "stg-reader" {
  display_name = "mg-stg-reader"
  security_enabled = true
}

resource "azuread_group" "qa-contrib" {
  display_name = "mg-qa-contrib"
  security_enabled = true
}

resource "azuread_group" "qa-reader" {
  display_name = "mg-qa-reader"
  security_enabled = true
}

resource "azuread_group" "dev-contrib" {
  display_name = "mg-dev-contrib"
  security_enabled = true
}

resource "azuread_group" "dev-reader" {
  display_name = "mg-dev-reader"
  security_enabled = true
}

resource "azuread_group" "shared-contrib" {
  display_name = "sub-shared-contrib"
  security_enabled = true
}

resource "azuread_group" "shared-reader" {
  display_name = "sub-shared-reader"
  security_enabled = true
}

resource "azuread_group" "sub-prod-contrib" {
  display_name = "sub-prod-contrib"
  security_enabled = true
}

resource "azuread_group" "sub-prod-reader" {
  display_name = "sub-prod-reader"
  security_enabled = true
}

resource "azuread_group" "sub-devtest-contrib" {
  display_name = "sub-dev/test-contrib"
  security_enabled = true
}

resource "azuread_group" "sub-devtest-reader" {
  display_name = "sub-dev/test-reader"
  security_enabled = true
}

