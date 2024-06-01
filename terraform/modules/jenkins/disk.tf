resource "google_compute_disk" "disk_jenkins" {
  name        = "${var.env}-${var.region}-${var.app}-disk-jenkins"
  description = "Disk for Jenkins config"
  type        = "pd-ssd"
  size        = var.disk_size
  labels = {
    env = var.env
    app = var.app
  }
}

resource "google_compute_disk_resource_policy_attachment" "disk_attach" {
  name = var.daily_snapshot_policy
  disk = google_compute_disk.disk_jenkins.name
}