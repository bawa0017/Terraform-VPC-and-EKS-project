resource "aws_vpc" "test-vpc1" {
    cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "test-subnet1" {
    vpc_id = aws_vpc.test-vpc1.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-southeast-1b"
    map_public_ip_on_launch = true
}
resource "aws_subnet" "test-subnet2" {
    vpc_id = aws_vpc.test-vpc1.id
    cidr_block = "10.0.5.0/24" 
    availability_zone = "ap-southeast-1a"
    map_public_ip_on_launch = true 
}
resource "aws_internet_gateway" "test-gateway" {
    vpc_id = aws_vpc.test-vpc1.id
  
}
resource "aws_route_table" "RT" {
    vpc_id = aws_vpc.test-vpc1.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-gateway.id
    }
}
resource "aws_route_table_association" "RT1" {
    subnet_id = aws_subnet.test-subnet1.id
    route_table_id = aws_route_table.RT.id
}
resource "aws_route_table_association" "RT2" {
    subnet_id = aws_subnet.test-subnet2.id
    route_table_id = aws_route_table.RT.id
  
}
