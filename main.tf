resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "env && ibmcloud target"
  }
}
