variable "google_project" {
    type = string
    description = "Google Project"
    default = "daring-healer-336321"
}

variable "google_region" {
    type = string
    description = "Google Region"
    default = "us-west4"
}

variable "google_zone" {
    type = string
    description = "Google Zone"
    default = "us-west4-b"
}

variable "google_compute_network_name" {
    type = string
    description = "Google Compute Network Name"
    default = "terraform-network"
}

variable "google_compute_instance_name" {
    type = string
    description = "Google Compute Instance Name"
    default = "terraform-instance"
}

variable "google_compute_instance_type" {
    type = string
    description = "Google Compute Instance Type"
    default = "f1-micro"
}

variable "disk_image" {
    type = string
    description = "Disk Image"
    default = "debian-cloud/debian-9"
}
