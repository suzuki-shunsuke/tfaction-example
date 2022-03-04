# tfaction-example

Example usage of [tfaction](https://github.com/suzuki-shunsuke/tfaction)

## Example Workflows

[All](.github/workflows)

* Main
  * [apply](.github/workflows/apply.yaml): Run `terraform apply` or `tfmigrate apply`
  * [test](.github/workflows/apply.yaml): Run `terraform apply` or `tfmigrate apply`
  * [scaffold-working-directory](.github/workflows/scaffold-working-directory.yaml): [Scaffold a working directory](https://suzuki-shunsuke.github.io/tfaction/docs/feature/scaffold-working-dir)
  * [scaffold-tfmigrate](.github/workflows/scaffold-tfmigrate.yaml): Scaffold tfmigrate migration
  * [scaffold-module](.github/workflows/scaffold-module.yaml): Scaffold Terraform Modules
  * [release-module](.github/workflows/release-module.yaml): Release Terraform Modules
  * [hide_comment](.github/workflows/hide_comment.yaml): Hide old Pull Request comments
* Others
  * [actionlint](.github/workflows/actionlint.yaml): Lint GitHub Actions Workflows with [actionlint](https://github.com/rhysd/actionlint)
  * [conftest-verify](.github/workflows/conftest-verify.yaml): Conftest's Policy Testing
  * [opa-fmt](.github/workflows/opa-fmt.yaml): Auto Format Rego Files with `opa fmt`
  * [renovate-config-validator](.github/workflows/renovate-config-validator.yaml): Validate Renovate Configuration with `renovate-config-validator`

## :warning: Note

Note that in this repository some GitHub Actions Workflows are configured not to be launched intentionally, because these workflows require the access to AWS.

```yaml
on:
  pull_request:
    # branches: [main]
    branches: [dummy] # Disabled
```

## LICENSE

[MIT](LICENSE)
