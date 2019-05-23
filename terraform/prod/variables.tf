variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "ubuntu-1604-xenial-v20190514"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "ubuntu-1604-xenial-v20190514"
}

variable source_ranges {
  description = "Allowed ip addresses"
  default     = ["0.0.0.0/0"]
}
