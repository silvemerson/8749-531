output "vm_name" {
    description = "Nome da VM"
    value = google_compute_instance.vm.name
  
}

output "ip_publico" {
    value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
  
}

output "machine_type" {
    value = google_compute_instance.vm.machine_type
  
}

output "zone" {
    value = google_compute_instance.vm.zone
}

output "disk_size" {
    value = google_compute_instance.vm.boot_disk.0.initialize_params[0].size
}


