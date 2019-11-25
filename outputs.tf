output "aws_lb_id" {
  value = aws_lb.v2lb.id
}

output "aws_lb_arn" {
  value = aws_lb.v2lb.arn
}

output "aws_lb_dns_name" {
  value = aws_lb.v2lb.dns_name
}

output "aws_lb_target_group_arn" {
  value = aws_lb_target_group.v2tg.arn
}