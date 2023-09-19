variable "filename" {
  default = "/home/ubuntu/terraform-varibles/devops-automated.txt"

}

variable "content" {
  default = "This ia auto generated from a variable"

}

variable "export_exmpl" {}

variable "content_map" {
  type = map(any)
  default = {
    "content1" = "This is content 1 line"
    "content2" = "This is content 2 line"
  }
}

variable "file_list" {
  type    = list(any)
  default = ["/home/ubuntu/terraform-varibles/file1.txt", "/home/ubuntu/terraform-varibles/file2.txt"]
}


variable "aws_ec2_object" {
  type = object({
    name      = string
    instances = number
    keys      = list(string)
    ami       = string
  })
  default = {
    name      = "aws_ec2_instance"
    instances = 2
    keys      = ["key1.pem", "key2.pem"]
    ami       = "a354s534"
  }

}

