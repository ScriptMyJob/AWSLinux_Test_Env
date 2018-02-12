########################################
### Variables ##########################
########################################

data "aws_availability_zones" "available" {}

variable "global" {
    type = "map"
    default = {
        environment = "Development"
        region      = "us-west-2"
    }
}

variable "vpc" {
    type = "map"
    default = {
        var         = true
    }
}

variable "ec2" {
    type = "map"
    default = {
        lc_name     = "AWS Linux Testing Server"
        asg_name    = "AWS Linux Testing ASG"
        image       = "ami-7f43f307"
        size        = "m3.medium"
        sgs         = "sg-50071f2d"
        subnet1     = "subnet-af7977f4"
        spot_price  = 0.0670
        min_size    = 1
        max_size    = 1
        tag_name    = "AWS Linux Testing Server"
    }
}
