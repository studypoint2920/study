
variable "ami_value" {
  description = "value for ami"
}

variable "instance_type_value" {
  description = "value for instance type"
}

variable "subnet_id_value" {
  description = "value for subnet"
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = var.subnet_id_value

  
tags = {
    Name = "webserver"
    app_id = "4137"
    server_owner = "Mahipal Singh"
  }

  output "public-ip-address" {
  value = aws_instance.webserver.public_ip
}

 }

