// Create Load Balancer v2
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

// Create Target group
resource "aws_lb_target_group" "v2tg" {
  port     = var.port
  protocol = upper(var.protocol)
  vpc_id   = var.vpcid
}

// Configure listener port 80 forward to web server
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.v2lb.arn
  port              = var.listener_port
  protocol          = upper(var.listener_protocol)

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.v2tg.arn
  }
}