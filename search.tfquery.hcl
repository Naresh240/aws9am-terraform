list "aws_instance" "unmanaged" {
  provider = aws
 
  config {
    region = "us-east-1"
 
    filter {
      name   = "tag:Name"
      values = ["unmanaged"]
    }
 
    filter {
      name   = "instance-state-name"
      values = ["running"]
    }
  }
}

resource
