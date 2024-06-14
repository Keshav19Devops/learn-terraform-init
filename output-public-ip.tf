
resource "aws_instance" "example_server1" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb2" {
  #instance = aws_instance.web.id
  domain   = "vpc"
}

output "public-ip-show-as-output" {

  value = aws_eip.lb2.public_ip
  
}


