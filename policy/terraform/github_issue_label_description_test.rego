package main

test_deny_github_issue_label_description {
	not any_deny_github_issue_label_description
}

any_deny_github_issue_label_description {
	seeds := [
		{
			"exp": set(), "msg": "pass",
			"resource": {
				"address": "github_issue_label.main", "type": "github_issue_label",
				"values": {"description": "foo"},
			},
		},
		{
			"exp": {"github_issue_label.main: [github_issue_label's description is required](https://github.com/suzuki-shunsuke/terraform-monorepo-github-actions/tree/main/policy/terraform/github_issue_label_description.md)"}, "msg": "descriptoin is empty",
			"resource": {
				"address": "github_issue_label.main", "type": "github_issue_label",
				"values": {"description": ""},
			},
		},
		{
			"exp": {"github_issue_label.main: [github_issue_label's description is required](https://github.com/suzuki-shunsuke/terraform-monorepo-github-actions/tree/main/policy/terraform/github_issue_label_description.md)"}, "msg": "descriptoin is null",
			"resource": {
				"address": "github_issue_label.main", "type": "github_issue_label",
				"values": {"description": null},
			},
		},
		{
			"exp": {"github_issue_label.main: [github_issue_label's description is required](https://github.com/suzuki-shunsuke/terraform-monorepo-github-actions/tree/main/policy/terraform/github_issue_label_description.md)"}, "msg": "description should be set",
			"resource": {
				"address": "github_issue_label.main", "type": "github_issue_label",
				"values": {},
			},
		},
	]

	some i
	seed := seeds[i]

	result := deny_github_issue_label_description with input as wrap_single_resource(seed.resource)

	result != seed.exp
	trace(sprintf("FAIL %s (%d): %s, wanted %v, got %v", ["test_deny_github_issue_label_description", i, seed.msg, seed.exp, result]))
}
