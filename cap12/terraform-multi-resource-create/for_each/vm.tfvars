default_region = "us-central1"
# zone = "us-central1-a"

instances = {
  mysql = {
    machine_type = "f1-micro"
    image        = "debian-cloud/debian-12"
    size         = 20
    zone = "us-central1-f"
  }
  nginx = {
    machine_type = "e2-medium"
    image        = "ubuntu-os-cloud/ubuntu-2404-noble-amd64-v20250725"
    size         = 25
    zone = "us-central1-a"
  }
  grafana = {
    machine_type = "e2-standard-4"
    image        = "centos-cloud/centos-stream-9-v20250709"
    size         = 20
    zone = "us-central1-c"
  }
  jenkins = {
    machine_type = "e2-micro"
    image        = "centos-cloud/centos-stream-9-v20250709"
    size         = 20
    zone = "us-central1-b"
  }  
}