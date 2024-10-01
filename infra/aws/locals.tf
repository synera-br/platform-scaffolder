locals {
  projectName = "${var.project_name}-demo"
  tags = merge(var.labels, { "owner" : "${var.projectOwner}", "createdAt" : "${var.created_at}"})
}