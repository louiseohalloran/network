##############################################################################
# Require terraform 0.9.3 or greater
##############################################################################
terraform {
  required_version = ">= 0.9.3"
}
##############################################################################
# IBM Cloud Provider
##############################################################################
# See the README for details on ways to supply these values
/*
provider "ibm" {
  bluemix_api_key = "${var.bxapikey}"
  softlayer_username = "${var.slusername}"
  softlayer_api_key = "${var.slapikey}"
} */

##############################################################################
# IBM Network VLAN 
##############################################################################

/* resource "ibm_network_vlan" "test_vlan" {
   name = "test_vlan"
   datacenter = "dal10"
   type = "PRIVATE"
   subnet_size = 8
}
*/
##############################################################################
# Variables
##############################################################################
variable vlan_public_id {
  description = "Enter vlan public ID"
}

variable vlan_private_id {
  description = "Enter vlan private ID"
}
variable subnet_id {
  description = "Enter subnet_id"
}


##############################################################################
# Outputs
##############################################################################
output "vlan_public_id" {
  value = "${var.vlan_public_id}"
}
output "vlan_private_id" {
  value = "${var.vlan_private_id}"
}
output "subnet_id" {
  value = "${var.subnet_id}"
}
