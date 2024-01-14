module "cloudrun" {
  source       = "./modules/cloud_run"
  project_id   = var.project_id
  region       = var.region
  service_name = "cloudrun-${var.project_id}-${var.region}-${var.image_name}"
  image_url    = "gcr.io/${var.project_id}/${var.image_name}:latest"
}
