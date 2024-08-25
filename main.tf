module "rg" {
    source = "./module"
    rg_name = "simulator-rg"
    rg_location = "South India"
    tags = {
      "Environment" = "Staging"
    }
}