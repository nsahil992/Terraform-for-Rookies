resource "aws_instance" "terra-learn" {
	ami = "ami-00bb6a80f01f03502"
	instance_type = "t2.micro"
	tags = {
	  Description = "A terraform learning web server"
	  Name = "terra-learn"

}
	user_data = <<-EOF
	#!/bin/bash
	sudo apt update
	sudo apt install nginx -y
	systemctl enable nginx
	systemctl start nginx
	EOF
}
