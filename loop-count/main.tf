resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo Fruit Name -  ${var.fruits[count.index]}"
  }

}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

variable "choco" {
  default = ["kitkat", "star", "dairy"]
}

resource "null_resource" "choco" {
  count = length(var.choco)

  provisioner "local-exec" {
    command = "echo Choco Name -  ${var.choco[count.index]}"
  }
}