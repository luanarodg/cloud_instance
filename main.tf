resource "aws_instance" "ubuntu" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"
    associate_public_ip_address = true
    subnet_id = "subnet-id"
    key_name = aws_key_pair.this.key_name

    vpc_security_group_ids = [
        module.security_group.security_group_id
    ]

    tags = {
        Name = "instance_name"
    }
}

resource "aws_key_pair" "this" {
    key_name = "key_name"
    public_key = "ssh-public" 
}