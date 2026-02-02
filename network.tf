resource "aws_security_group" "sg" {
  name = "${var.env}-sg"
  for_each = var.appl_ports
  dynamic "ingress" {
    for_each = var.appl_ports
    content {
      from_port = ingress.value.from_port
      to_port   = ingress.value.to_port
      cidr_blocks = ["0.0.0.0/0"]
      protocol  = "tcp"
      description = ingress.key
    }

  }
  tags = {
    Name = "${var.env}-${each.key}"
  }
}


