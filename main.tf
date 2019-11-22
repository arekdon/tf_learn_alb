resource "aws_lb" "v2lb" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = [var.security_groups]
  subnets            = var.subnets

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}

resource "aws_lb_target_group" "v2tg" {
  port     = var.port
  protocol = upper(var.protocol)
  vpc_id   = var.vpcid
}