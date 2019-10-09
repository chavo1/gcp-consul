# Module that create Consul server in GCP

# This example contains code which deploys a [Consul](https://www.consul.io/) cluster in GCP from this [module](https://github.com/chavo1/gcp-consul.git).

## Prerequisites
- Please install the following component:
  - | [Terraform](https://www.terraform.io/)
- You must also have an GCP account.
- Clone the repo:
```
git clone git clone https://github.com/chavo1/gcp-consul.git
cd gcp-consul.git/example
```
- Create terraform.tfvars file with needed credentials and variables for your image.

### We can start with deploying process
```
terraform init
terraform plan
terraform apply
```
### Do not forget to destroy the environment after the test
```
terraform destroy
```
