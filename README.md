Azure Resource Group Terraform module
=====================================

This module is used to deploy Azure Resource Group resource on Azure cloud using Terraform.

Prerequisites
--------------
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

Requirements
------------

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0.1 |


Usage
------

```hcl
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg" {
    source = "./module"
    rg_name = "simulator-rg"
    rg_location = "South India"
    tags = {
      "Environment" = "Staging"
    }
}

```

Inputs
------


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| **rg_name** | Resource group name | `string` | `NA` | yes |
| **rg_location** | Resource group location | `string` | `NA` | yes |
| **tags** | Additional tags associated with the resource (*Name tag will be automatically deployed* )| `string` | `NA` | yes |

Outputs
--------

| Name | Description |
|------|-------------|
| **rg_id** | Resource group id |

Revision History 
----------------

### Contributors

- Created by [Suyash Chandra](https://github.com/suyash1610)