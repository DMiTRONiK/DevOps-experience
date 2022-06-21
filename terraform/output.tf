output "instance_public_ip" {
  value = aws_instance.tf_stage.public_ip
}

output "latest_ubuntu-20_04_ami_id" {
  value = data.aws_ami.latest_ubuntu-20_04.id
}
