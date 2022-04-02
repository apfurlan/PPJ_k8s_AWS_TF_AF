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

#===================================================================
#                        VPC variables
#==================================================================

cidr_vpc = "10.0.0.0/22"

vpc_id_sb = "vpc-09f0fc68f94c90ce6"

private_subnets_vpc = ["subnet-02476e5c2c606d594","subnet-0d455364bfef10264"]