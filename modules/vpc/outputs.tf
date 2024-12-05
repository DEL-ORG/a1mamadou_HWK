output "vpc_id" {
  value       = aws_vpc.my-vpc.id
  description = "The ID of the VPC"
}

output "public_subnet_ids" {
  value = [for public in aws_subnet.public : public.id]
  description = "List of IDs for public subnets"
}

output "private_subnet_ids" {
  value = [for private in aws_subnet.private : private.id]
  description = "List of IDs for private subnets"
}

output "nat_gateway_ids" {
  value = [for main-nat-gateway in aws_nat_gateway.main-nat-gateway : main-nat-gateway.id]
}
output "nat_eip_ids" {
  value = [for nat_eip in aws_eip.nat_eip : nat_eip.id]
}

output "public_subnet_cidrs" {
  value       = var.public_subnet_cidrs
  description = "Map of availability zones to public subnet CIDR blocks"
}


output "private_subnet_cidrs" {
  value       = var.private_subnet_cidrs
  description = "Map of availability zones to private subnet CIDR blocks"
}