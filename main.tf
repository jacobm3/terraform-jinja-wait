
module "linuxucp" {
    source = "./modules/linux"
    SSRID = "${var.SSRID}"
    environment = "${var.environment}"
    csp = "${var.csp}"
    ServerType = "ucp"
    servers = 1
    machine_type = "n1-standard-2"
    zone = "${var.zone}"
    linux_image = "${var.linux_image}"
    bootdisk_size = "${var.bootdisk_size}"
    pd_size = "${var.pd_size}"
    pd_type = "${var.pd_type}"
    vnet = "${var.vnet[var.environment]}"
    subnet = "${var.subnet[var.environment]}"
    CostCenter = "${var.CostCenter}"
    Creator = "${var.Creator}"
    default_ssh_public_key = "${var.default_ssh_public_key}"
    salt_pw = "${var.salt_pw}"
    salt_url = "${var.salt_url[var.environment]}"
    salt_master = "${var.salt_master[var.environment]}"
}


module "linuxdtr" {
    source = "./modules/linux"
    SSRID = "${var.SSRID}"
    environment = "${var.environment}"
    csp = "${var.csp}"
    ServerType = "dtr"
    servers = 2
    machine_type = "n1-standard-2"
    zone = "${var.zone}"
    linux_image = "${var.linux_image}"
    bootdisk_size = "${var.bootdisk_size}"
    pd_size = "${var.pd_size}"
    pd_type = "${var.pd_type}"
    vnet = "${var.vnet[var.environment]}"
    subnet = "${var.subnet[var.environment]}"
    CostCenter = "${var.CostCenter}"
    Creator = "${var.Creator}"
    default_ssh_public_key = "${var.default_ssh_public_key}"
    salt_pw = "${var.salt_pw}"
    salt_url = "${var.salt_url[var.environment]}"
    salt_master = "${var.salt_master[var.environment]}"
}


module "linuxlwr" {
    source = "./modules/linux"
    SSRID = "${var.SSRID}"
    environment = "${var.environment}"
    csp = "${var.csp}"
    ServerType = "lwr"
    servers = 3
    machine_type = "n1-standard-2"
    zone = "${var.zone}"
    linux_image = "${var.linux_image}"
    bootdisk_size = "${var.bootdisk_size}"
    pd_size = "${var.pd_size}"
    pd_type = "${var.pd_type}"
    vnet = "${var.vnet[var.environment]}"
    subnet = "${var.subnet[var.environment]}"
    CostCenter = "${var.CostCenter}"
    Creator = "${var.Creator}"
    default_ssh_public_key = "${var.default_ssh_public_key}"
    salt_pw = "${var.salt_pw}"
    salt_url = "${var.salt_url[var.environment]}"
    salt_master = "${var.salt_master[var.environment]}"
}


module "linuxwwr" {
    source = "./modules/linux"
    SSRID = "${var.SSRID}"
    environment = "${var.environment}"
    csp = "${var.csp}"
    ServerType = "wwr"
    servers = 4
    machine_type = "n1-standard-2"
    zone = "${var.zone}"
    linux_image = "${var.linux_image}"
    bootdisk_size = "${var.bootdisk_size}"
    pd_size = "${var.pd_size}"
    pd_type = "${var.pd_type}"
    vnet = "${var.vnet[var.environment]}"
    subnet = "${var.subnet[var.environment]}"
    CostCenter = "${var.CostCenter}"
    Creator = "${var.Creator}"
    default_ssh_public_key = "${var.default_ssh_public_key}"
    salt_pw = "${var.salt_pw}"
    salt_url = "${var.salt_url[var.environment]}"
    salt_master = "${var.salt_master[var.environment]}"
}

