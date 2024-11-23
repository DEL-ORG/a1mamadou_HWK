resource "aws_instance" "homework_01" {
  ami           = "ami-0cde6390e61a03eee"  # Replace with an AMI ID of your choice
  instance_type = "t2.micro"
  subnet_id     = "subnet-008b29f4b2c645a56"        # Replace with the actual Subnet ID

  tags = {
    Name = "Homework_EC2_Instance"
  }
}
