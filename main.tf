resource "random_id" "r1" {
  keepers = {
    time = timestamp()
  }
  byte_length = 8
}

module "m1" {
source = "./import"
}

module "m2" {
source = "./deployment"
}

removed {
  from = module.m2.random_id.r3

  lifecycle {
    destroy = false
  }
}

