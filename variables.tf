# Generic Variables

variable "region-master" {
  type    = string
  default = "eu-west-1"
}

variable "project" {
  type        = string
  description = "consistent name to be used throughout your project"
  default     = "sample_project"
}

#VPC

variable "vpc-name" {
  type        = string
  default     = "vpc"
  description = "(optional) describe your variable"
}

#SG

variable "asg-sg-name" {
  type        = string
  default     = "asg-sg"
  description = "(optional) describe your variable"
}