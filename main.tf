#Create the instances
#------------------------
resource "google_compute_instance" "server" {
  name                      = "consul-server0${count.index}"
  machine_type              = "f1-micro"
  allow_stopping_for_update = true
  tags                      = ["consul"]
  count                     = var.server_count
  boot_disk {
    initialize_params {
      image = var.gcp_image
    }
  }

  network_interface {
    subnetwork = var.subnet-vm
    network_ip = "172.31.${var.dc_net}.${count.index + 11}"
    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = "kayode:${file(var.public_key_path)}"
  }

  metadata_startup_script = file("${path.module}/scripts/consul.sh")

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}