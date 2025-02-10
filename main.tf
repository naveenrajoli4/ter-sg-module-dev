resource "aws_security_group" "sg_main" {
  name        = local.sg_final_name
  description = var.description
  # vpc_id      = var.vpc_id

  egress {
    from_port        = "0"
    to_port          = "0"
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.commn_tags,
    var.mysql_sg_tags,
    var.backend_sg_tags,
    var.fronend_sg_tags,
    {
      Name = local.sg_final_name
    }
  )

}