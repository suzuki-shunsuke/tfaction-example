# Policy: GitHub Issue Label description is required

[Policy](github_issue_label_description.rego)

## Overview

The resource `github_issue_label`'s `description` is required.

## Target resources and attributes

* [github_issue_label's description](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label#description)

## Why is this policy needed?

## How to fix

Set the attribute `description` to the resource.

```tf
resource "github_issue_label" "foo" {
  # ...
  description = "Breaking Change"
}
```
