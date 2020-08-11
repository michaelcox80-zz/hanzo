# How to run

```
export AWS_SECRET_ACCESS_KEY=***
export AWS_ACCESS_KEY_ID=***
```

then copy or link the relevant tfvars file into the main dir

```
terraform init
terraform plan
terraform apply
```

once the cluster is created
```
eksctl get cluster
aws eks update-kubeconfig --name <cluster_name>
```

