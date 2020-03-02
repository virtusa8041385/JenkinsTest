provider "aws" {

  region     = var.region

  access_key = var.access_key

  secret_key = var.secret_key

}



resource "aws_instance" "web" {

ami  = var.ami

associate_public_ip_address = "true"
iam_instance_profile = "servicenow-s3-Instanceprofile"
key_name = var.aws_key_name

instance_type = var.instance_type

subnet_id  = var.subnetId 

security_groups = [var.userSG] 



tags = {

	Name =var.instance_name

	InstanceUserID = var.instance_userid
	
	"ResourceGroup"           = "BpaaC"

	"scheduler:ec2-startstop" = var.scheduler

        AccountOwner = var.account_owner

	    }

user_data = <<-EOF

              #!/bin/bash

              echo "Hello, World" > index.html

              nohup busybox httpd -f -p 8080 &

              EOF

	

	}

output "ip" {
  value = "${aws_instance.web.*.public_ip}"
  description = "The public IP address of the main server instance."
}
output "region"{
  value = var.region
  description = "Region where the instance is provisioned"
}
output "Tags"{
  value = "${aws_instance.web.*.tags}"
}
output "public_dns"{
  value = "${aws_instance.web.*.public_dns}"
}
output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = "${aws_instance.web.*.subnet_id}"
}
output "key_name" {
  description = "List of key names of instances"
  value       = "${aws_instance.web.*.key_name}"
}
