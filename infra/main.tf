terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("../credentials.json")

  project = var.google_project
  region  = var.google_region
  zone    = var.google_zone
}

resource "google_compute_network" "vpc_network" {
  name = var.google_compute_network_name
}

resource "google_compute_instance" "vm_instance" {
  name         = var.google_compute_instance_name
  machine_type = var.google_compute_instance_type

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}