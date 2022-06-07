provider "azurerm" {
  features {}
}

resource "azurerm_management_group" "main-mgs" {
    for_each     = var.mg-names
    display_name = each.value
}

resource "azurerm_management_group" "parent-mg" {
    display_name = "${var.parent-mg}"
}

resource "azurerm_management_group" "child-mgs" {
    for_each   = var.mg-child-names
    display_name = each.value
    parent_management_group_id = azurerm_management_group.parent-mg.id
    depends_on = [
      azurerm_management_group.parent-mg
    ]
}