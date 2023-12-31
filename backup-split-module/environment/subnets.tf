#############
# Create Subnets within the VPC.
# A total of 3 subnets will be created
#   1. Public subnet
#   2. Private subnet
#   3. Private data subnet

# This will be replicated in 2 AZs.
###########

# 2 Public subnets
resource "aws_subnet" "public_subnets" {
  count                   = length(var.public_subnet_cidr_list)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = element(var.public_subnet_cidr_list, count.index)
  availability_zone       = element(var.az_list, count.index % 2)
  map_public_ip_on_launch = true

  tags = {
    terraform                = "true"
    Name                     = "vib-test-vpc-public-subnet-${count.index + 1}"
    Email                    = "${var.emailtag}"
    Owner                    = "${var.emailtag}"
    "kubernetes.io/role/elb" = 1
  }
}

# 4 Private subnets
resource "aws_subnet" "private_subnets" {
  count                   = length(var.private_subnet_cidr_list)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = element(var.private_subnet_cidr_list, count.index)
  availability_zone       = element(var.az_list, count.index % 2)
  map_public_ip_on_launch = false

  tags = {
    terraform                         = "true"
    Name                              = "vib-test-vpc-private-subnet-${count.index + 1}"
    Email                             = "${var.emailtag}"
    Owner                             = "${var.emailtag}"
    "kubernetes.io/role/internal-elb" = 1
  }
}