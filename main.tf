resource "azurerm_management_group" "tier-1" {
  count        = length(var.tier-1-mgs)
  display_name = var.tier-1-mgs[count.index]
}


resource "azurerm_management_group" "tier-2" {
  count                      = length(var.tier-2-mgs)
  display_name               = var.tier-2-mgs[count.index]
  parent_management_group_id = azurerm_management_group.tier-1[0].id
  depends_on = [
    azurerm_management_group.tier-1
  ]
}


resource "azurerm_management_group" "tier-3" {
  count                      = length(var.tier-3-mgs)
  display_name               = var.tier-3-mgs[count.index]
  parent_management_group_id = azurerm_management_group.tier-2[1].id
  depends_on = [
    azurerm_management_group.tier-2
  ]
}

