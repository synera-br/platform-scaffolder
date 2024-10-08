/**
 * # Main title
 *
 * Azure Resource Group
 *
 * Module to deploy Azure Resource Group
 */
resource "azurerm_resource_group" "rsg" {
  name     = "${var.name}-rsg"
  location = var.location
  tags     = var.tags

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      tags["created_at"]
    ]
  }
}