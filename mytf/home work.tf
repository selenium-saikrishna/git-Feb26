1) Create a VPC (10.0.0.0/16)
2) Create 3 subnets
    Sn1 : 10.0.0.0/24
    sn2: 10.0.1.0/24
    sn3 :10.0.2.0/24
3) Make Sn1 as public Subnets
4) Launch Ec2 instance in SN1 Subnet
5) Create EIP and Attach it to Ec2 instance
6) Install Apache2 in SN1 subnet instance