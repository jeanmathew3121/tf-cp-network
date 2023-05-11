terraform {
  required_providers {
    checkpoint = {
      source  = "checkpointsw/checkpoint"
      version = "~> 1.6.0"
    }
  }
}

# Configure the Check Point Provider
provider "checkpoint" {
  server   = var.cp-mgmt-server
  username = var.cp-mgmt-username
  password = var.cp-mgmt-password
  context  = var.cp-mgmt-context
}



resource "checkpoint_management_network" "example" {
  name = "New Network 1"
  subnet4 = "192.0.2.0"
  mask_length4 = 32
}


resource "checkpoint_management_publish" "example" { }
