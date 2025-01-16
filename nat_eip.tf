resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    "Name" = "${var.environment}-nat-eip"
  }
}