provider "aws" {
  region     = "us-east-1"

}
resource "aws_instance" "instance-1" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.medium"
  vpc_security_group_ids = ["sg-0fd03c13039a2e3d6"]
  tags = {
       "Name" = "EC2 Prod Demo 2"
     }
}
