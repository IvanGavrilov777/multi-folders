
resource "random_id" "r3" {
  keepers = {
    time = timestamp()
  }
  byte_length = 8
}

resource "random_id" "r2" {
  keepers = {
    time = timestamp()
  }
  byte_length = 8
}

