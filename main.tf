resource "aws_lb" "v2lb" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = [var.security_groups]
  subnets            = [var.subnets]

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}