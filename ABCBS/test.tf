#define providers used
provider "azurerm" {
  version = "~> 2.0"
  features {}
}



terraform fmt #this will format the terraform file to be readable 
terraform init #this will initialize the terraform file
terraform plan #this will plan the changes that will be made to the terraform file
terraform apply #this will apply the changes that were planned
