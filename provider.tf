# Declare the provider and set the project ID
# To access the cloud platform, either service account credentials key or SA impersonation can be used.
provider "google" {
  credentials = file("path/to/google/credentials.json")
  project     = var.project_id
}