terraform {
  required_providers {
    humanitec = {
      source = "humanitec/humanitec"
    }
  }
}

provider "humanitec" {
    # org_id = var.humanitec_organization
}