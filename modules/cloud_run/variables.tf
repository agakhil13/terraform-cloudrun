variable "project_id" {
  description = "The GCP project ID"
}

variable "service_name" {
  description = "The name of the Cloud Run service"
}

variable "region" {
  description = "The GCP region where Cloud Run service should be deployed"
}

variable "image_url" {
  description = "The URL of the container image to deploy"
}
