resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = each.value["instance_type"]
  tags = {
    Name = each.value["component_name"]
  }
}