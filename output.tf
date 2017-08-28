# return output
output "json_dump" {
 value = "${data.template_file.json_dump.rendered}"
}
