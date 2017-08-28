# tf_json_to_variable
A helper function to make it easy to pass any DC/OS JSON object to a variable in the config.yaml. This includes `dcos_overlay_network`, `dcos_rexray_config`, `dcos_cluster_docker_credentials` or any other json acceptable object required by DC/OS.

## Usage

### Module Data Input

```bash
module "rexray-json-data-contents" {
  source   = "github.com/bernadinm/tf_json_to_variable"
  input_json_data = <<EOF
{
  "rexray": {
    "loglevel": "info",
    "modules": {
      "default-docker": {
        "disabled": true
      },
      "default-admin": {
        "host": "tcp://127.0.0.1:61003"
      }
    }
  }
}
EOF 
}
```

### Module Path Output

```bash
 dcos_rexray_config = "${module.rexray-json-data-contents.json_dump}"
```


# Authors

Originally created and maintained by [Miguel Bernadin](https://github.com/bernadinm).


# License

Apache 2 Licensed. See LICENSE for full details.
