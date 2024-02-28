resource "aws_security_group" "http" {
  name = "aws11-example-instance-http"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  ingress {
    from_port = var.http_port
    to_port   = var.http_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 }
  egress {
    from_port = 0
    to_port   = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }
  tags = {
    Name = "aws11-http"
  }
}

resource "aws_security_group" "ssh" {
  name = "aws11-example-instance-ssh"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  ingress {
    from_port = var.ssh_port
    to_port   = var.ssh_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 } 
  egress {
    from_port = 0
    to_port   = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }
 tags = {
   Name = "aws11-ssh"
 }
}



resource "aws_security_group" "https" {
  name = "aws11-example-instance-https"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  ingress {
    from_port = var.https_port
    to_port   = var.https_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 }
  egress {
    from_port = 0
    to_port   = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }
 tags = {
   Name = "aws11-https"
 }
}