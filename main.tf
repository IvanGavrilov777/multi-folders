resource "random_id" "r1" {
  keepers = {
    time = timestamp()
  }
  byte_length = 8
}

module "m1" {
source = var.import
}

variable "import" {
default = "./import"
}

import {
  to = module.m1.aws_instance.VM
  id = "i-00bbccdaf25d399f8"
}

