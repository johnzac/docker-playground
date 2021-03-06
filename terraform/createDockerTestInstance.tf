resource "aws_instance" "dockerTest"
{
ami = "ami-efd0428f"
instance_type = "t2.micro"
vpc_security_group_ids = ["${aws_security_group.public-sg.id}"]
key_name = "mysql-key"
subnet_id="${aws_subnet.public_subnet-us-west-2a.id}"
private_ip="192.168.101.5"
user_data = "${file("userDataDockerTest")}"
}
