/*  this script will organize multicloud deployment with :
 - AWS 
 - Azure 
 - google compute plateforme  (GCP)
 version : 0.2 */

# networks part 
# google Terraform network deployment
resource "google_compute_network" "our_development_network" {
  name                    = "devnetwork"
  project                 = "terraformlab2"
  auto_create_subnetworks = false
}

# AWS Terraform network deployment
resource "aws_vpc" "enviromment-example-two" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "terraform-aws-vpc-example-two"
  }
}

# Azure Terraform ressource group deployment
resource "azurerm_resource_group" "azy_network" {
  location = "France Central"
  name     = "devresgrp"
}
