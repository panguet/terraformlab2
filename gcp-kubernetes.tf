resource "google_container_cluster" "kubey" {
  name               = "kubeycluster"
  zone               = "europe-west1-b"
  initial_node_count = "1"

  additional_zones = [
    "europe-west1-c",
  ]

  master_auth {
    password = "password-16-or-more-characters"
    username = "username"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      this-is-for = "dev-cluster"
    }

    tags = ["dev", "work"]
  }
}
