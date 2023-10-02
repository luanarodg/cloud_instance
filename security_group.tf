module "security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "~>5.1"

  vpc_id = data.aws_vpc.vpc_name.id
  name   = "sg-name"

  ingress_cidr_blocks = [
    "0.0.0.0/0"
  ]
}