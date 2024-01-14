# Enable the Cloud Run API
resource "google_project_service" "cloud_run" {
  project = "var.project_id"
  service = "run.googleapis.com"
}

# Create a Cloud Run app
resource "google_cloud_run_service" "cloudrun_service" {
  name     = var.service_name
  location = var.region
  project = var.project_id
  template {
    spec {
      containers {
        image = var.image_url
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

