resource "aws_instance" "this" {
  count = var.instances_count
  ami = data.aws_ami.linux2.image_id
  instance_type = "t3.micro"
  key_name = var.instance_key

  tags = {
    Name = "${var.project_name}-${count.index}"
  }
}