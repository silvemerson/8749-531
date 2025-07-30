terraform {
  backend "gcs" {
    bucket = "exercicio01-8749-531"
    prefix = "terraform/state"
  }
}