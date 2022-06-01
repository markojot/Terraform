#terraform {
#
#  required_version = ">=0.12"
#  
#  required_providers {
#   azurerm = {
#      source = "hashicorp/azurerm"
#      version = "~>3.0"
#    }
#  }
#}

provider "azurerm" {
  features {}
}

resource "azurerm_management_group" "root-mg" {
  display_name =  "${var.CompanyManagementGroupName}"
}

resource "azurerm_management_group" "main-mg" {
  display_name =  "mg-${var.shortcompanyname}"
  parent_management_group_id = azurerm_management_group.root-mg.id
  depends_on = [
    azurerm_management_group.root-mg
  ]
}

resource "azurerm_management_group" "sandbox" {
  display_name =  "mg-${var.Sandbox}"
  parent_management_group_id = azurerm_management_group.root-mg.id
  depends_on = [
    azurerm_management_group.root-mg
  ]
}

######
### NEED TO ADD SUBS IN SANDBOX MG
######

resource "azurerm_management_group" "platform" {
    display_name = "mg-${var.platform}"
    parent_management_group_id = azurerm_management_group.main-mg.id
    depends_on = [
        azurerm_management_group.sandbox
    ]
}

resource "azurerm_management_group" "production" {
    display_name = "mg-${var.production}"
    parent_management_group_id = azurerm_management_group.main-mg.id
    depends_on = [
        azurerm_management_group.sandbox
    ]
}

resource "azurerm_management_group" "staging" {
    display_name = "mg-${var.staging}"
    parent_management_group_id = azurerm_management_group.main-mg.id
    depends_on = [
        azurerm_management_group.sandbox
    ]
}

resource "azurerm_management_group" "development" {
    display_name = "mg-${var.development}"
    parent_management_group_id = azurerm_management_group.main-mg.id
    depends_on = [
        azurerm_management_group.sandbox
    ]
}

resource "azurerm_management_group" "production-hr" {
    display_name = "mg-${var.production-hr}"
    parent_management_group_id = azurerm_management_group.production.id
    depends_on = [
        azurerm_management_group.production
    ]
}

resource "azurerm_management_group" "production-marketing" {
    display_name = "mg-${var.production-marketing}"
    parent_management_group_id = azurerm_management_group.production.id
    depends_on = [
        azurerm_management_group.production
    ]
}

resource "azurerm_management_group" "IT" {
    display_name = "mg-${var.IT}"
    parent_management_group_id = azurerm_management_group.production.id
    depends_on = [
        azurerm_management_group.production
    ]
}

resource "azurerm_management_group" "shared" {
    display_name = "mg-${var.shared}"
    parent_management_group_id = azurerm_management_group.production.id
    depends_on = [
        azurerm_management_group.production
    ]
}























# resource "azurerm_management_group" "decom-mg" {
#   display_name = "mg-${var.shortcompanyname}-${var.decomissioned}"
#   parent_management_group_id = azurerm_management_group.parent-jvn.id
#   depends_on = [
#     azurerm_management_group.parent-jvn
#   ]
# }
# resource "azurerm_management_group" "landingzones-mg" {
#   display_name = "mg-${var.shortcompanyname}-${var.landingzones}"
#   parent_management_group_id = azurerm_management_group.parent-jvn.id
#   depends_on = [
#     azurerm_management_group.parent-jvn
#   ]
# }
# resource "azurerm_management_group" "corp" {
#     display_name = "mg-${var.shortcompanyname}-${var.corp}"
#     parent_management_group_id = azurerm_management_group.landingzones-mg.id
#     depends_on = [
#       azurerm_management_group.landingzones-mg
#     ]
  
# }
# resource "azurerm_management_group" "online" {
#     display_name = "mg-${var.shortcompanyname}-${var.online}"
#     parent_management_group_id = azurerm_management_group.landingzones-mg.id
#     depends_on = [
#       azurerm_management_group.landingzones-mg
#     ]
# }
# resource "azurerm_management_group" "sap" {
#     display_name = "mg-${var.shortcompanyname}-${var.sap}"
#     parent_management_group_id = azurerm_management_group.landingzones-mg.id
#     depends_on = [
#       azurerm_management_group.landingzones-mg
#     ]
  
# }
# resource "azurerm_management_group" "platform" {
#     display_name = "mg-${var.shortcompanyname}-${var.platform}"
#     parent_management_group_id = azurerm_management_group.parent-jvn.id
#     depends_on = [
#       azurerm_management_group.parent-jvn
#     ]
  
# }
# resource "azurerm_management_group" "connectivity" {
#     display_name = "mg-${var.shortcompanyname}-${var.connectivity}"
#     parent_management_group_id = azurerm_management_group.platform.id
#     depends_on = [
#       azurerm_management_group.platform
#     ]
  
# }
# resource "azurerm_management_group" "identity" {
#     display_name = "mg-${var.shortcompanyname}-${var.identity}"
#     parent_management_group_id = azurerm_management_group.platform.id
#     depends_on = [
#       azurerm_management_group.platform
#     ]
# }
# resource "azurerm_management_group" "management" {
#     display_name = "mg-${var.shortcompanyname}-${var.management}"
#     parent_management_group_id = azurerm_management_group.platform.id
#     depends_on = [
#       azurerm_management_group.platform
#     ]
  
# }
# resource "azurerm_management_group" "sandboxes" {
#     display_name = "mg-${var.shortcompanyname}-${var.sandboxes}"
#     parent_management_group_id = azurerm_management_group.parent-jvn.id
#     depends_on = [
#       azurerm_management_group.parent-jvn
#     ]
  
# }