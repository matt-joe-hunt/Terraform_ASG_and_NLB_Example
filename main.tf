provider "aws" {
  region = var.region-master
}

module "ASG" {
  source = "./ASG"

  sg-id = module.SG.sg-id
}

module "NLB" {
  source = "./NLB"

  public-subnet-ids = module.VPC.subnet-ids
  vpc-id            = module.VPC.vpc-id
}

module "SG" {
  source  = "./SG"

  asg-sg-name = var.asg-sg-name
  vpc-id  = module.VPC.vpc-id
}

module "VPC" {
  source   = "./VPC"
  
  vpc-name = var.vpc-name
}
