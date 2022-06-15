data "azurerm_subscription" "primary" {
}

resource "azurerm_role_definition" "global-admin" {
  name        = "az-global-admin"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created for az-global-admin"

}

resource "azurerm_role_definition" "global-reader" {
  name        = "az-global-reader"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created az-global-reader"

}

resource "azurerm_role_definition" "security-admin" {
  name        = "az-security-admin"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created az-security-admin"

}

resource "azurerm_role_definition" "security-reader" {
  name        = "az-security-reader"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created for az-security-reader"

}

resource "azurerm_role_definition" "billing-admin" {
  name        = "az-billing-admin"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created for az-billing-admin"

}