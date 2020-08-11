locals {
  cluster_name = "${var.env_name}-eks-${random_string.suffix.result}"
}