# Terraform / Packer Example

Use this repository as a starting point to deploy a new VPC from scratch with
packer-built AMIs and terraform-deployed AWS infrastructure.


## Prerequisites

`make` installs both terraform and packer.

You'll need to sign up for a free account at https://atlas.hashicorp.com and
export your `ATLAS_TOKEN` to authenticate with Atlas.

## Packer

`packer push -create packer/bastion.json` uploads the packer config and triggers
the initial AMI build.

Subsequent changes can be pushed with `packer push packer/bastion.json`.

## Terraform

`cd terraform/live && terraform get` fetches the external modules.
`cd terraform/live && terraform plan` shows pending changes.
`cd terraform/live && terraform apply` applies pending changes.
