resource "aws_instance" "example" {
  ami           = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = "alpha_terra_103"
  count         = "1"
  tags = {
    Name = "check"
  }
  security_groups = [aws_security_group.example_sg.name]
  user_data = file("userdata.sh")
}
