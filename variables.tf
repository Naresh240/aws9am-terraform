variable "ami_id" {
  description = "The AMI ID to use for the instance"
  default     = "ami-098e39bafa7e7303d"
}

variable "instance_type" {
    description = "The type of instance to create"
    default     = "t3.micro"
}

variable "key_name" {
    description = "The name of the key pair to use for SSH access"
    default     = "aws8pm"
}

variable "instance_count" {
    description = "The number of instances to create"
    default     = 1
}

variable "tags" {
    description = "A map of tags to assign to the instance"
    default     = {
        Name = "Linux_Server"
    }
}