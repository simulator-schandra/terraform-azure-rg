module "rg" {
    source = "../"
    rg_name = "simulator-rg"
    rg_location = "South India"
    tags = {
      "Environment" = "Staging"
    }
}