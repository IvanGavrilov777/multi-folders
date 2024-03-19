resource "random_id" "1" {
  keepers = {
    time = timestamp()
  }
  byte_length = 8
}

module "1" {
source "./import"
}

module "2" {
source "./deployment"
}

