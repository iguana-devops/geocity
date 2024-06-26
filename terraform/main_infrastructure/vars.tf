variable "project" {
  description = "Google cloud active project"
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

variable "zone" {
  description = "The availability zone where the resource will be deployed"
  type        = string
}

variable "image_type" {
  description = "The instance OS"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}

