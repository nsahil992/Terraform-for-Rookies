resource "aws_instance" "terra-learn" {
	ami = "ami00bb6a80f01f03502"
	instance = "t2.micro"
	tags = {
	  Description = "A terraform learning web server"
	  Name = "terraa-learn"

}
	user_data = <<-EOF
	#!/bin/bash
	sudo apt update
	sudo apt install nginx -y
	systemctl enable nginx
	systemctl start nginx
	EOF
}
