# fronting-res-def

This repo show how to use "front" resource definitions. These are resource definitions using the `humanitec/echo` or `humanitec/template` to expose individual resources that are provisioned monolithically.

## Getting started

### Configure the environment

The following environment variables need to be set:

| variable | description |
| --- | --- |
| `HUMANITEC_TOKEN` | An API token from Humanitec A|
| `HUMANITEC_ORG_ID` | The Humanitec Org ID |

### Running terraform

1. Set up terraform
   ```
   terraform init
   ```

2. Check the plan
   ```
   terraform plan
   ```

3. Apply the terraform
   ```
   terraform apply
   ```

## How it works

The terraform creates 5 resource definitions:

| id | type | driver | description |
| --- | --- | --- | --- |
| `base-env-tf` | `base-env` | `humanitec/terraform` | Runs the terraform. Is parameterised by a `config` resource. |
| `app-01-config` | `config` | `humanitec/echo` | Acts as a "config file" to parameterize the `base-env-tf` resource definition. |
| `app-02-config` | `config` | `humanitec/echo` | Acts as a "config file" to parameterize the `base-env-tf` resource definition. |
| `front-redis` | `redis` | `humanitec/echo` | Fronts the redis from the `base-env-tf` resource definition. |
| `front-gcs` | `redis` | `humanitec/echo` | Fronts the Google Cloud Storage Bucket from the `base-env-tf` resource definition. |

