
resource "aws_instance" "ubuntu" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  key_name =aws_key_pair.key.id
  tags {
    Name = "${var.name}"
  }
  provisioner "file" {
        source      = "~/playbook.yml"
        destination = "/home/ubuntu/playbook.yml"
  }      
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y python python-pip
              sudo apt-get install ansible
              ansible-playbook /home/ubuntu/playbook.yml
              EOF 

}

resource "aws_key_pair" "key" {
  key_name   = "ubuntu-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
