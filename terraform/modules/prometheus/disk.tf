resource "google_compute_disk" "disk_prometheus" {
  name        = "${var.env}-${var.region}-${var.app}-disk-prometheus"
  description = "Disk for prometheus config"
  type        = "pd-ssd"
  size        = var.disk_size
  labels = {
    env = var.env
    app = var.app
  }
}

resource "google_compute_resource_policy" "daily_snapshot_policy" {
  name        = "${var.env}-${var.region}-${var.app}-daily-snapshot-policy"
  description = "Snapshot policy once per day"
  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = 1
        start_time    = "00:00"
      }
    }
    retention_policy {
      max_retention_days    = 7
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
    }
    snapshot_properties {
      labels = {
        env = var.env
        app = var.app
      }
    }
  }
}

resource "google_compute_disk_resource_policy_attachment" "disk_attach" {
  name = google_compute_resource_policy.daily_snapshot_policy.name
  disk = google_compute_disk.disk_prometheus.name
}