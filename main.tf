# Read Script and return output
data "template_file" "json_dump" {
 template = "${file("${path.module}/helper.sh")}"

 vars {
 input_json = "${var.input_json_data}"
 }
}
