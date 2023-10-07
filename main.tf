provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
    alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "webserver1" {
  ami = "ami-067d1e60475437da2"
  instance_type = "t2.micro"
  subnet_id = "subnet-edf890a0"
  provider = "aws.us-east-1"
  count = "2"

  tags = {
    Name = "webserver1"
}

}

resource "aws_instance" "testserver" {
  ami = "ami-00b7cc7d7a9f548ea"
  instance_type = "t2.micro"
  subnet_id = "subnet-0e951276"
  provider = "aws.us-west-2"
  count = "2"

  tags = {
    Name = "test_webserver"
}


}


