
output "hello" {
  value = "hello world"
}


resource "null_resource" "readcontentfile" {
  provisioner "local-exec" {
    command = "/bin/bash xmass.sh"
  }
}


