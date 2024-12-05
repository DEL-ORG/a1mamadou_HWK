# Create Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.my-vpc.id
  
  tags = merge(var.common_tags, {
    Name = "${var.common_tags["environment"]}-${var.common_tags["project"]}-igw"
  })
}
