#==============================================================
#                General Variables
#==============================================================
aws_region = "us-east-1"

availability_zone = ["us-east-1a","us-east-1b", "us-east-1c",
    "us-east-1d","us-east-1e","us-east-1f"]


Project = "Superset & Airflow on k8s"

IaC = "Terraform"

Cloud = "AWS"

tags = {
    "Project" = "K8s_IaC"
    "IaC" =  "Terraform"
    "Cloud"  = "AWS"
    "Purpose" = "Project - Part II"
}

#=================================================================
#                          EKS Variables
#=================================================================

cluster_version = "1.21"

volume_type = "gp2"

map_users = [{
    "userarn"  = "arn:aws:iam::127012818163:user/alexandre.furlan"
    "username" = "alexandre.furlan"
    "groups"   = ["system:masters"]
}]

instance_type = "t2.small"

### ainda não foi testado
variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "777777777777",
    "888888888888",
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::66666666666:role/role1"
      username = "role1"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::66666666666:user/user1"
      username = "user1"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::66666666666:user/user2"
      username = "user2"
      groups   = ["system:masters"]
    },
  ]



#===================================================================
#                        VPC variables
#==================================================================

cidr_vpc = "10.0.0.0/22"

vpc_id_sb = "vpc-09f0fc68f94c90ce6"

private_subnets_vpc = ["subnet-02476e5c2c606d594","subnet-0d455364bfef10264"]
