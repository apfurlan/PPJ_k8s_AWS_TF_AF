module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "~> 17.24.0"
  cluster_name    = local.cluster_name
  cluster_version = var.cluster_version
  subnets         = var.private_subnets_vpc

  vpc_id = var.vpc_id_sb 

  cluster_endpoint_private_access = "true"

  workers_group_defaults = {
    root_volume_type = var.volume_type
  }

  
  worker_groups = [
    {
      name                          = "worker-group-${var.Project}-${var.IaC}-1"
      instance_type                 = var.instance_type
      additional_userdata           = "echo foo bar"
      asg_desired_capacity          = 2
      additional_security_group_ids = [aws_security_group.worker_group_mgmt_one.id]
    },
  ]

  # preciso testar esta parte. Ainda não foi testada. 	
  worker_additional_security_group_ids = [aws_security_group.all_worker_mgmt.id]
  map_roles                            = var.map_roles
  map_users                            = var.map_users
  map_accounts                         = var.map_accounts

  tags = var.tags

}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}


data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

