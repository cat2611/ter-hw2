# Единая map-переменная с ресурсами всех ВМ
variable "vms_resources" {
  description = "Resources config for all VMs"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-ssd"
    }
  }
}

variable "metadata" {
  type = map(object({
    serial-port-enable = number
    ssh-keys           = string
  }))
  default = {}
}




######Переменные для  VM "web" ########

variable "vm_web_image_family" {
  type        = string
  description = "Family of the VM image"
  default     = "ubuntu-2404-lts-oslogin"
}

variable "vm_web_name" {
  type        = string
  description = "Name of the web VM"
  default     = "netology-develop-platform-web"
}

variable "vm_web_platform_id" {
  type        = string
  description = "Platform ID for the web VM"
  default     = "standard-v4a"
}

#variable "vm_web_cores" {
#  type        = number
#  description = "Number of CPU cores"
#  default     = 2
#}

#variable "vm_web_memory" {
#  type        = number
#  description = "Amount of RAM in GB"
#  default     = 1
#}

#variable "vm_web_core_fraction" {
#  type        = number
#  description = "CPU core fraction (guaranteed vCPU share), %"
#  default     = 20
#}

variable "vm_web_preemptible" {
  type        = bool
  description = "Make the VM preemptible"
  default     = true
}

variable "vm_web_nat" {
  type        = bool
  description = "Enable public IP (NAT) for the VM"
  default     = true
}

variable "vm_web_serial_port_enable" {
  type        = number
  description = "Enable serial port (1 - enabled, 0 - disabled)"
  default     = 1
}


##### Переменные для ВМ "db" ##############

variable "ru_central1_b_cidr" {
  type        = list(string)
  default     = ["192.168.1.0/24"]
  description = "для ВМ ДБ"
}

variable "vm_db_name" {
  type        = string
  description = "Name of the db VM"
  default     = "netology-develop-platform-db"
}

variable "vm_db_platform_id" {
  type        = string
  description = "Platform ID for the db VM"
  default     = "standard-v4a"
}

#variable "vm_db_cores" {
#  type        = number
#  description = "Number of CPU cores for db VM"
#  default     = 2
#}

#variable "vm_db_memory" {
#  type        = number
#  description = "Amount of RAM in GB for db VM"
#  default     = 2
#}

#variable "vm_db_core_fraction" {
#  type        = number
#  description = "CPU core fraction for db VM, %"
#  default     = 20
#}

variable "vm_db_preemptible" {
  type        = bool
  description = "Make the db VM preemptible"
  default     = true
}

variable "vm_db_nat" {
  type        = bool
  description = "Enable public IP (NAT) for the db VM"
  default     = true
}

variable "vm_db_serial_port_enable" {
  type        = number
  description = "Enable serial port for db VM (1 - enabled, 0 - disabled)"
  default     = 1
}

variable "vm_db_zone" {
  type        = string
  description = "Availability zone for the db VM"
  default     = "ru-central1-d"
}
