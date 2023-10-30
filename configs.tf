resource "humanitec_resource_definition" "config_app_01" {
  driver_type = "humanitec/echo"
  id          = "app-01-config"
  name        = "app-01-config"
  type        = "config"

  driver_inputs = {
    values_string = jsonencode({
        repo_url = "http://github.com/chrishumanitec/app-01"
        tf_path = "terraform"
    })
  }
}

resource "humanitec_resource_definition_criteria" "config_app_01_criteria" {
  resource_definition_id = "app-01-config"
  app_id                 = "app-01"
  res_id = "terraform"
}

resource "humanitec_resource_definition_criteria" "config_app_01" {
  resource_definition_id = "app-01-config"
  app_id                 = "app-01"
}

resource "humanitec_resource_definition" "config_app_02" {
  driver_type = "humanitec/echo"
  id          = "app-02-config"
  name        = "app-02-config"
  type        = "config"

  driver_inputs = {
    values_string = jsonencode({
        repo_url = "http://github.com/chrishumanitec/app-02"
        tf_path = "terraform"
    })
  }
}

resource "humanitec_resource_definition_criteria" "config_app_02_criteria" {
  resource_definition_id = "app-02-config"
  app_id                 = "app-02"
  res_id = "terraform"
}
resource "humanitec_resource_definition_criteria" "config_app_02" {
  resource_definition_id = "app-02-config"
  app_id                 = "app-02"
}