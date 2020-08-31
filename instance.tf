resource "google_compute_instance" "final" {
  name         = "final"
  machine_type = "n1-standard-4"
  zone         = "asia-southeast2-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}