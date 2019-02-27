resource aws_instance "i1"
{
   ami ="ami-0c5199d385b432989"
   instance_type="t2.micro"
   key_name="dec24" 
   vpc_security_group_ids=["${aws_security_group.mysg.id}"]   
  
}

resource aws_security_group "mysg"
{
   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["23.45.67.78/32","23.45.60.78/32"]
  }
ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["23.45.67.78/32","23.45.60.78/32"]
  }

}