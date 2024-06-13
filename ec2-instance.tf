resource "aws_instance" "example_server" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name = "keshav-Ubuntu"
  }
}