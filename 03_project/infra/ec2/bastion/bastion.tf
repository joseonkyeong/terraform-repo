resource "aws_instance" "bastion" {
    ami = "ami-09eb4311cbaecf89d"
    instance_type = "t2.micro"
    key_name = "aws11-key"
    //퍼블릭 ip 활성화
    associate_public_ip_address = true
    subnet_id = data.terraform_remote_state.vpc.outputs.public-subnet-2a-id

    vpc_security_group_ids = [ data.terraform_remote_state.security_group.outputs.ssh_id ]

    tags = {
        Name = "aws11-bastion"
    }
}

