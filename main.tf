terraform {
  required_version = ">= 0.13"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">= 1.17.0"
    }
  }
}

resource "null_resource" "test" {
  triggers = {
    timestampe = timestamp()
  }
  provisioner "local-exec" {
    command = "env && ibmcloud target"
  }
}
