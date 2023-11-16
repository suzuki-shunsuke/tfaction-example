# Automating Terraform with tfactions and GitOps

This guide provides instructions on how to set up a Terraform infrastructure monorepo using tfactions for GitOps automation. 

## Introduction to Terms

**Stack**: In the context of Terraform, a 'stack' refers to a collection of Terraform resources that are managed and applied together.

#### Example

You can refer the example [PR](https://github.com/codimite/tfaction-template/pull/1).

## Repository Structure

This repository is structured to help you automate your Terraform pipeline with GitHub Actions. It contains the following key directories:

- `.github/workflows/`: Contains example GitHub Actions workflows to set up your pipelines.
- `aqua/`: Uses [aquaproj/aqua](https://github.com/aquaproj/aqua) to install and manage versions of required tools.
- `templates/`: Holds templates for your target Terraform stacks.
- `policy/`: Stores policy definitions for [Conftest](https://www.conftest.dev/) to test and enforce custom policies against your Terraform configurations.
- `tfaction-root.yaml`: A configuration file for tfactions. Notable fields include:
  - `plan_workflow_name`: A required field to name your plan workflow.
  - `target_groups`: Allows grouping of stacks with specific permission boundaries and associated service accounts.
- `.tfprovidercheck.yaml`: Contains allowed providers
## :warning: Note

Use `.tfprovidercheck.yaml` file to allow providers for your config. Default config.
providers:
  - name: registry.terraform.io/hashicorp/google
  - name: registry.terraform.io/hashicorp/random

## Setting Up

To use this setup:

1. Clone this repository as a starting point for your infrastructure code.
2. Creat a GitHub App.
  - The App needs following permissions.
     | Name | Permission | Description|
     | ------------- | ----- | --------------- |
     | Contents	| write	| create commits and branches|
     | Pull Requests	| write	| open pull requests|
     | Actions	| read	| download artifacts|
  - Generate a private key and add it as APP_PRIVATE_KEY GHA secret
  - Add the App ID of the GitHub App as APP_ID GHA secret
3. Define your initial stack groups in `target_groups:`. Full Terraform configuration for each isn't required initially.
   ```yaml:
   target_groups:
    - working_directory: gcp/dev/
      target: gcp/dev/
      template_dir: templates/gcp
   - working_directory: gcp/networking/
      target: gcp/networking/
      template_dir: templates/gcp
   ```
4. Run the workflow Scaffold a working directory (scaffold-working-directory) to build the stacks you want to add. This will generate you an dir to add your terraform config.
   For example:
    run workflow for target: `gcp/dev/vm`
    will create a PR with that folders created and add in the dirs/files `template_dir: templates/gcp` as mentioned above.
5. If the groups does not have a service accounts already create service accounts for each group defined and link them in `target_groups:`.
6. Once you have added there service accounts with proper permissions and scoffolding done you can start adding stacks.

## Workflows to Enable

These are the workflows you need to set up:

- **On pull request:**
  - `test`: Run tests and execute `terraform plan`

- **On push:**
  - `apply`: Executes `terraform apply` or `tfmigrate apply`, using the plan artifact from pull requests.

- **On workflow_dispatch:**
  - `scaffold-working-directory`: Sets up a new working directory from templates.

## Features of tfactions

- Supports a Monorepo setup with multiple Terraform configurations in a single repository.
- Runs Terraform operations in parallel using the GitHub Actions build matrix.
- Communicates the results of `plan` and `apply` operations to users on pull requests.
- Ensures safe application by using Terraform Plan files created during pull requests.
- Handles Terraform apply failures by automatically creating a pull request with an empty commit to trigger a re-run.
- Manages and updates `.terraform.lock.hcl` automatically.
- Periodically checks for configuration drift and tracks it using GitHub Issues.
- Includes several linters in the test GitHub Action to ensure code quality.

Feel free to contribute to the repository or suggest enhancements to this automation process.
