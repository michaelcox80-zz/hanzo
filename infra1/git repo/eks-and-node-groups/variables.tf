variable "region" {
  default = "eu-west-1"
}

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
}


### VPC

variable "vpc_name" {
  default = "test-vpc"
}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

variable "private_subnets" {
  type = list(string)
  default = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
}

variable "public_subnets" {
  type = list(string)
  default = ["172.16.4.0/24", "172.16.5.0/24", "172.16.6.0/24"]
}

### EKS

variable "env_name" {
  default = "test"
}

variable "eks_ami_type" {
  default = "AL2_x86_64"
}

variable "eks_ng_disk_size" {
  default = 50
}

variable "eks_ng_instance_type" {
  default = "m5.large"
}



variable "cidr_block" {
  description = "CIDR for the whole VPC"

  default = {
    prod = "10.10.0.0/16"
    dev  = "10.20.0.0/16"
  }
}

variable "eks_cluster_name" {
  description = "cluster name"
  default     = "terra"
}

variable "identifier" {
  description = "Identifier for DB"
  default     = "terra-db"
}

variable "storage_type" {
  description = "Type of the storage ssd or magnetic"
  default     = "gp2"
}

variable "allocated_storage" {
  description = "ammount of storage allocated in GB"

  default = {
    prod = "100"
    dev  = "10"
  }
}

variable "db_engine" {
  description = " DB engine"
  default     = "postgres"
}

variable "engine_version" {
  description = "DB engine version"
  default     = "9.6.6"
}

variable "instance_class" {
  description = "mashine type to be used"

  default = {
    prod = "db.t2.micro"
    dev  = "db.t2.large"
  }
}

variable "db_username" {
  description = "db admin user"
  default     = "root"
}

variable "db_password" {
  description = "password, provide through your tfvars file"
}