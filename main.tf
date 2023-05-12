terraform {
  required_providers {
    checkpoint = {
      source  = "checkpointsw/checkpoint"
      //version = "~> 1.6.0"
    }
  }
}

# Configure the Check Point Provider
provider "checkpoint" {
  server   = var.cp-mgmt-server
  username = var.cp-mgmt-username
  password = var.cp-mgmt-password
  context  = var.cp-mgmt-context
  session_name = "terraform_session"
}



resource "checkpoint_management_network" "add-network" {
  name = var.cp-network-name
  subnet4 = var.cp-network-ip
  mask_length4 = var.cp-mask_length
}


resource "checkpoint_management_publish" "example" { }
resource "checkpoint_management_logout" "example" {}
