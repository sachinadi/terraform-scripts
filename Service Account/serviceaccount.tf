provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

# Optional: Grant roles to the service account
resource "google_project_iam_member" "service_account_role" {
  for_each = toset(var.roles)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

# Output the service account email
output "service_account_email" {
  value = google_service_account.service_account.email
}
