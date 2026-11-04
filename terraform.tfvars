metadata = {
  common = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBOp0ilrOrOqMz7peK+9SxZpI6ZrIuk/qudm1JbnVKCR root@lyndsey"
  }
}

vms_resources = {
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
    hdd_type      = "network-hdd"
  }
}
