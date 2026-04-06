
variable "enable" {}

resource "google_compute_network" "vpc" {
  count = var.enable ? 1 : 0
  name  = "gke-network"
}

resource "google_compute_subnetwork" "subnet" {
  count         = var.enable ? 1 : 0
  name          = "gke-subnet"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc[0].id
}

resource "google_container_cluster" "gke" {
  count    = var.enable ? 1 : 0
  name     = "demo-gke"
  location = "us-central1"

  network    = google_compute_network.vpc[0].name
  subnetwork = google_compute_subnetwork.subnet[0].name

  initial_node_count = 2
}
