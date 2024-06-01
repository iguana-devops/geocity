resource "tls_private_key" "ssh_key_prometheus" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "google_secret_manager_secret" "ssh_key_prometheus" {
  secret_id = "${var.env}-${var.region}-${var.app}-ssh_jenkins"
  labels = {
    env = var.env
    app = var.app
  }
  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "ssh_key_prometheus_version" {
  secret      = google_secret_manager_secret.ssh_key_prometheus.id
  secret_data = tls_private_key.ssh_key_prometheus.private_key_openssh
}