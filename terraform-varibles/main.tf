resource "local_file" "devops-rsc"{ 
	filename = var.file_list[0]
	content = var.content_map["content1"] 
}

resource "local_file" "devops-automated-rsc" {
	filename = var.file_list[1]
	content = var.content_map["content2"]
}

output "export_exmpl" {
	value = var.export_exmpl

}

output "aws_ec2_instances" {
	value = var.aws_ec2_object.instances

}



