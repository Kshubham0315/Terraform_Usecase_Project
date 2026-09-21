# Terraform Multi-Environment AWS Provisioning

Student: SHUBHAM KUMAR
Roll No: 2400290130165
Section: IT C

## Overview

This project uses Terraform to provision AWS infrastructure for multiple environments such as Development and Production using a single Terraform configuration.

## Technologies

* Terraform
* AWS
* Terraform Workspaces
* HCL

## Environments

Development and Production environments are managed using Terraform Workspaces.

```bash
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev
terraform workspace select prod
```

Environment-specific configuration is managed using Terraform variables.

## Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Objective

To demonstrate Infrastructure as Code and manage multiple AWS environments using reusable Terraform configuration.

# Terraform Complete Execution Workflow

## 1. Write Configuration

Terraform configuration is written in `.tf` files such as:

```text
main.tf
providers.tf
variables.tf
outputs.tf
```

These files define the AWS infrastructure and its required configuration.

## 2. Initialize Terraform

```bash
terraform init
```

Terraform initializes the project and downloads the required AWS provider.

## 3. Format Code

```bash
terraform fmt
```

This formats the Terraform code into the standard format.

## 4. Validate Configuration

```bash
terraform validate
```

This checks whether the Terraform configuration is syntactically and structurally correct.

## 5. Select Environment

The project supports Development and Production environments using Terraform Workspaces.

```bash
terraform workspace select dev
```

or

```bash
terraform workspace select prod
```

The same Terraform code can therefore be used for different environments.

## 6. Provide Variables

Environment-specific values are provided through Terraform variables.

This keeps the infrastructure code reusable instead of hard-coding values directly in the resource definitions.

## 7. Create Execution Plan

```bash
terraform plan
```

Terraform compares the configuration with the current state and shows what resources need to be created, modified, or deleted.

No infrastructure is changed at this stage.

## 8. Apply Configuration

```bash
terraform apply
```

Terraform executes the planned changes through the AWS provider and creates or updates the required AWS resources.

```text
Terraform Code
      ↓
Terraform Provider
      ↓
AWS API
      ↓
AWS Infrastructure
```

## 9. State Management

Terraform maintains a state file that keeps track of the infrastructure managed by Terraform.

This allows Terraform to understand the current infrastructure and calculate future changes.

## 10. View Outputs

```bash
terraform output
```

This displays the output values defined in the Terraform configuration, such as resource IDs or IP addresses.

## 11. Destroy Infrastructure

When the infrastructure is no longer required:

```bash
terraform destroy
```

Terraform removes the resources that it manages.

## Complete Flow

```text
Terraform Code
      ↓
terraform init
      ↓
terraform fmt
      ↓
terraform validate
      ↓
Select Workspace
      ↓
Set Variables
      ↓
terraform plan
      ↓
terraform apply
      ↓
AWS Infrastructure
      ↓
Terraform State
      ↓
terraform output
      ↓
terraform destroy
```