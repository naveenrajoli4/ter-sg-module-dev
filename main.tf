resource "aws_security_group" "sg" {
  name        = local.sg_name
  description = var.description
  vpc_id      = var.vpc_id

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    tags = merge (
        var.commn_tags,
        var.sg_tags,
        {
            Name = local.sg_name
        }
    )

}