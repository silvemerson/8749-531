resource "google_compute_disk" "vm-disco-backup" {
    name = var.disk_name
    type = var.type_disk
    zone = var.zone
    size = var.disk_size
  
}