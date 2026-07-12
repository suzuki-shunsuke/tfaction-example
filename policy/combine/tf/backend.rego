package main

import rego.v1

import data.tfaction

deny_gcs_backend_prefix contains msg if {
	file := input[_]
	prefix := file.contents.terraform[_].backend.gcs.prefix
	prefix != concat("", [tfaction.working_directory, "/v1"])
	msg = sprintf("%s: prefix=%s, file=%s", ["Terraform GCS Backend prefix must be (service directory)/v1", prefix, file.path])
}
