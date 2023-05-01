# tfaction-example

Example usage of [tfaction](https://github.com/suzuki-shunsuke/tfaction)

## Example Workflows

[All](.github/workflows)

* pull_request
  * [test](.github/workflows/test.yaml)
    * [test](.github/workflows/wc-test.yaml): Run `terraform plan` or `tfmigrate plan`
    * [hide-comment](.github/workflows/wc-hide-comment.yaml): Hide old Pull Request comments
    Others
    * [conftest-verify](.github/workflows/wc-conftest-verify.yaml): Conftest's Policy Testing
    * [opa-fmt](.github/workflows/wc-opa-fmt.yaml): Auto Format Rego Files with `opa fmt`
    * [renovate-config-validator](.github/workflows/wc-renovate-config-validator.yaml): Validate Renovate Configuration with `renovate-config-validator`
  * [actionlint](.github/workflows/actionlint.yaml): Lint GitHub Actions Workflows with [actionlint](https://github.com/rhysd/actionlint)
* push
  * [apply](.github/workflows/apply.yaml): Run `terraform apply` or `tfmigrate apply`
* workflow_dispatch
  * [scaffold-working-directory](.github/workflows/scaffold-working-directory.yaml): [Scaffold a working directory](https://suzuki-shunsuke.github.io/tfaction/docs/feature/scaffold-working-dir)
  * [scaffold-tfmigrate](.github/workflows/scaffold-tfmigrate.yaml): Scaffold tfmigrate migration
  * [scaffold-module](.github/workflows/scaffold-module.yaml): Scaffold Terraform Modules
  * [release-module](.github/workflows/release-module.yaml): Release Terraform Modules

## :warning: Note

Note that in this repository some GitHub Actions Workflows are configured not to be launched intentionally, because these workflows require the access to AWS.

.github/workflows/test.yaml

```yaml
  test:
    uses: ./.github/workflows/wc-test.yaml
    if: 'false' # TODO Please remove this.
```

.github/workflows/apply.yaml

```yaml
on:
  push:
    # branches: [main]
    branches: [dummy] # Disabled
```

## LICENSE

[MIT](LICENSE)
