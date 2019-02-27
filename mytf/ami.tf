variable "v1"
{
}
resource aws_instance "i2"
{
   ami ="ami-0c5199d385b432989"
   instance_type="${var.v1}"
   key_name="dec24" 
   }
resource aws_ami_from_instance "testami"
{
  source_instance_id ="${aws_instance.i2.id}"
 name ="testingamitf"
}
resource aws_instance "i3"
{
   ami ="${aws_ami_from_instance.testami.id}"
   instance_type="${var.v1}"
   key_name="dec24"
   availability_zone="ap-southeast-1b" 
   }


