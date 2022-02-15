#==========================================================
#             Provider
#==========================================================
provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}


#============================================================
#             Variaveis Gerais
#============================================================

variable "cliente" {
  type = string
}

variable "mantenedor" {
  type = string
}

variable "ambiente" {
  type = string
}

variable "time" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "aws_region" {
  type = string
}

locals {
  cluster_name = "eks-k8s-${var.ambiente}-${var.mantenedor}"
}

#===================================================
#             Variaveis Buckets
#===================================================

variable "bucket_names" {
  type = list(string)
}

variable "bucket_function" {
  type = list(string)
}

#============================================================
#             Variaveis VPC
#============================================================

variable "cidr_vpc" {
  type = string
}

variable "private_subnets_vpc" {
  type = list(string)
}

variable "public_subnets_vpc" {
  type = list(string)
}

#============================================================
#             Variaveis EKS
#============================================================

variable "cluster_version" {
  type = string
}

variable "volume_type" {
  type = string
}

variable "instance_type" {
  type = string
}