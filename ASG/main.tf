resource "aws_launch_template" "template" {
  name_prefix   = "template"
  image_id      = data.aws_ssm_parameter.linuxAmi.value
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg-id]
}

resource "aws_autoscaling_group" "asg" {
  availability_zones = data.aws_availability_zones.azs.names
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.template.id
    version = "$Latest"
  }
}