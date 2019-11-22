variable "name" {
  description = "Load Balancer Name"
  type        = string
}

variable "internal" {
  description = "Is load balancer internal?"
  type        = bool
  default     = false
}

variable "load_balancer_type" {
  description = "Type of v2 LoadBalancer? Could be application or network"
  type        = string
  default     = "application"
}

variable "security_groups" {
  description = "List of Security Groups attached to LoadBalancer"
  type        = string
}

variable "subnets" {
  description = "List of subnets where LoadBalancer is attached"
  type        = list(string)
}

variable "port" {
  description = "Port to which traffic is forwarded"
  type        = string
  default     = 80
}

variable "protocol" {
  description = "Protocol of TG"
  type        = string
  default     = "http"
}

variable "vpcid" {
  description = "Target group's VPC id"
  type        = string
}