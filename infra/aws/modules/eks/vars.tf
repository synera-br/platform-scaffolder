variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the EKS nodes"
  type        = string
}

variable "vpc_id" {
  description = "The ARN of the IAM role for the EKS nodes"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs for the EKS cluster"
  type        = list(string)
}
