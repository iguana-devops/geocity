variable "image_type" {
  description = "The instance OS"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
}

variable "env" {
  description = "The Working environment"
  type        = string
}

variable "app" {
  description = "The application name"
  type        = string
}

variable "region" {
  description = "The default region to deploy infrastructure"
  type        = string
}

variable "project" {
  description = "Google cloud active project"
  type        = string
}

variable "disk_size" {
  description = "The size of th disk"
  type        = string
}

variable "disk_snapshot" {
  description = "The snapshot from which the disk will be created"
  type        = string
}

variable "vpc_network" {
  description = "Vpc network for resources"
  type        = string
}

variable "sub_network" {
  description = "Subnetwork network for resources"
  type        = string
}

variable "deletion_protection" {
  description = "Deletion protection for instances"
  type        = string
}