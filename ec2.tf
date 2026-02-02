resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = each.value["instance_type"]
  security_groups = [aws_security_group.sg[each.key].id]
  tags = {
    Name = each.key
  }
}