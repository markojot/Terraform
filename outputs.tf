output "tier-1" {
  description = "resource display name should match var.tier-1-mgs"
  value       = zipmap(azurerm_management_group.tier-1[*].display_name, var.tier-1-mgs[*])
}

output "tier-2" {
  description = "resource display name should match var.tier-2-mgs"
  value       = zipmap(azurerm_management_group.tier-2[*].display_name, var.tier-2-mgs[*])
}


output "tier-3" {
  description = "resource display name should match var.tier-3-mgs"
  value       = zipmap(azurerm_management_group.tier-3[*].display_name, var.tier-3-mgs[*])

}

output "mg-abcbs" {
  description = "output should match : mg-abcbs"
  value       = azurerm_management_group.tier-1[0].display_name
}

output "mg-sandbox" {
  description = "output should match : mg-sandbox"
  value       = azurerm_management_group.tier-1[1].display_name
}


output "mg-production" {
  description = "output should match : mg-production"
  value       = azurerm_management_group.tier-2[1].display_name

}
