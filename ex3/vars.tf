variable REGION {
  default = "us-east-1"
}

variable ZONE1 {
  default = "us-east-1a"
}

variable AMIS {
  type = map
  default =  {
    us-east-1 = "ami-04cb4ca688797756f"
    us-east-2 = "ami-01103fb68b3569475"
  }
}
variable USER {
  default = "ec2-user"
}