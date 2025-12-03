### Terraform

Welcome to learn Terraform from basics to advanced. The repository consists of files as I have learnt about them.

### How to run

Follow these commands in order

`terrraform init` - the first time so that providers plugins are installed
`terraform plan` - to get to see what changes are going to be made
`terraform apply` - to make things happen


### Handling secrets

Terraform needs to authenticate with any provider you are going to use. Hence the first step is to get the access key and secret key or tokens etc from the provider. For e.g. for AWS it is access key and secret key which you can find under IAM.

You have to create `secrets.tfvars` in your root. You will find a `secrets_example.tfvars` of how it should look like. Then you can refer to them via `var.<key>` in the `.tf` file. You can checkout `first_ec2.tf` to get an idea of how they are referred.

To run the project you will need to provide the file name as an option else it will keep asking for the key values. For e.g. `terraform plan  -var-file="secrets.tfvars"`