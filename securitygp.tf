resource "aws_security_group" "example_sg" {
  name_prefix = "example-sg-testing"
  tags = {
    Name = "securityexmple"
}
ingress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
 }
}
