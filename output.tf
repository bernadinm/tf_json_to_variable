# return output
output "json_dump" {
 value = "${data.template_file.json_dump.rendered}"
}

output "json_dump_from_path" {
 value = "${data.template_file.json_path_dump.rendered}"
}
