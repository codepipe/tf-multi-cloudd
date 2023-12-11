Terraform connectivity for Azure Cloud and provisioning the Azure Resources in high level
=================================================================================
Pre-Requisites:
=============
1. Download and Install AZURE CLI (SDK)  in you local host. (link to download:  https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)
2. Validate the Azure cli  installed or not through termianal by running the command  az --version command
3. Navigate the Active Directory Default one or Customized Directory to create new user or can use the exisiting root user
4. Idenify the tenat ID and Subscritions and Subscripiton ID's
5. Navigate the Active Directory Default one and create a Application Registration 
6. Navigate through Subscritions Validate the rite roles are assigned or not for Specific Subscritions ( ex: if its not can assign reader, owner , contributor etc ) and also assign the    (roles aove mentioned like reader, owner , contributor etc)  RBAC to the application Registration oject
7. Note: Create Secrets for the applcation objects and store the secret value after that it will not be visible 


Luxu476126

provider "azurerm" {

  subscription_id = "67984b0c-b1ba-411d-8791-3c939d9e3f2d"
  client_id       = "c56103b5-9f86-4d43-860e-3c8d7c3e45ef"
  client_secret   = "pqL8Q~EggHEzQCW_X8xm8NscOD8wZDwnkqc8qcHg"
  tenant_id       = "082be390-66a5-4955-ac6d-6d538731998b"
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "mass-mass" {
  name     = "mass-mass-mass"
  location = "North Europe"
}

