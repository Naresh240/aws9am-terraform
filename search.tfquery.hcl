list "aws_security_group" "example" {
  provider = aws
 
  config {
    filter {
      name   = "tag:Name"
      values = ["allow_ssh"]
    }
  }
}
