resource "aws_instance" "server" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
  key_name = var.key_name

  security_groups = var.security_group_name

  root_block_device {
    volume_size           = var.volume_size
    volume_type           = var.volume_type
    delete_on_termination = true
    encrypted             = true
    tags = {
      Name = var.ebs_name
    }
  }
}
