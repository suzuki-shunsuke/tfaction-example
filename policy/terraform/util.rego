package main

import rego.v1

wrap_single_resource(resource) := x if {
	x := {"planned_values": {"root_module": {"resources": [resource]}}}
}
