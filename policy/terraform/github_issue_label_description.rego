package main

allow_github_issue_label_description(values) {
	values.description != null
	values.description != ""
}

deny_github_issue_label_description[msg] {
	walk(input.planned_values.root_module, [path, value])
	value.type == "github_issue_label"
	not allow_github_issue_label_description(value.values)
	msg = sprintf("%s: [%s](%s)", [value.address, "github_issue_label's description is required", "https://github.com/suzuki-shunsuke/terraform-monorepo-github-actions/tree/main/policy/terraform/github_issue_label_description.md"])
}
