resource "humanitec_resource_definition" "front_redis" {
  driver_type = "humanitec/echo"
  id          = "front-redis"
  name        = "front-redis"
  type        = "redis"


  driver_inputs = {
    values_string = jsonencode({
        host = "$${resources.base-env#base-env.outputs.redis_host}"
        port = "$${resources.base-env#base-env.outputs.redis_port}"
    })
  }
}

resource "humanitec_resource_definition_criteria" "front_redis" {
  resource_definition_id = "front-redis"
}

resource "humanitec_resource_definition" "front_gcs" {
  driver_type = "humanitec/echo"
  id          = "front-gcs"
  name        = "front-gcs"
  type        = "gcs"


  driver_inputs = {
    values_string = jsonencode({
        name = "$${resources.base-env#base-env.outputs.gcs_name}"
    })
  }
}

resource "humanitec_resource_definition_criteria" "front_gcs" {
  resource_definition_id = "front-gcs"
}
