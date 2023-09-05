resource "null_resource" "fruits" {


  provisioner "local-exec" {

    //command = "echo  ${length(var.fruits)}"
  }

}