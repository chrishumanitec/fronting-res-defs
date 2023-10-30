resource "humanitec_resource_definition" "base_env_tf" {
  driver_type = "humanitec/terraform"
  id          = "base-env-tf"
  name        = "base-env-tf"
  type        = "base-env"

  driver_inputs = {
    values_string = jsonencode({
        source = {
            path = "$${resources.config#terraform.outputs.tf_path}"
            url = "$${resources.config#terraform.outputs.repo_url}"
            rev = "refs/heads/main"
        }
    })
  }
}

resource "humanitec_resource_definition_criteria" "base_env_tf" {
  resource_definition_id = "base-env-tf"
}