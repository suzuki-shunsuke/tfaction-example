package main

wrap_single_resource(resource) = x {
	x := {"planned_values": {"root_module": {"resources": [resource]}}}
}
