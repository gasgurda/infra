variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable disk_image {
  description = "Disk image"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-mongodb-base-1557865627"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-ruby-base-1557865888"
}

variable source_ranges {
  description = "Allow only my ipi address access"
  default     = ["0.0.0.0/0"]
}
