# Variables
variable "input_json_data" {}

## Example Variables
# variable "input_json_data" {
#   type = "string"
#   default = <<EOF
# {
#   "rexray": {
#     "loglevel": "info",
#     "modules": {
#       "default-docker": {
#         "disabled": true
#       },
#       "default-admin": {
#         "host": "tcp://127.0.0.1:61003"
#       }
#     }
#   }
# }
# EOF
# }
