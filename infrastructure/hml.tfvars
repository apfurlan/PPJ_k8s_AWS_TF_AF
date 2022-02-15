#==============================================================
#                General Variables
#==============================================================
aws_region = "us-east-1"

availability_zone = ["us-east-1a","us-east-1b", "us-east-1c",
    "us-east-1d","us-east-1e","us-east-1f"]

Project = "k8s"

IaC = "Terraform"

Cloud = "AWS"

tags = {
    "Project" = "K8s_IaC"
    "IaC" =  "Terraform"
    "Cloud"  = "AWS"
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

cidr_vpc = "10.0.0.0/16"

private_subnets_vpc = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets_vpc  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]