provider "aws" {
  region = "us-east-1"
}

module "docker-instance" {
  source                = "YunusKarsen35/docker-instance/aws"
  version               = "0.0.1"
  key_name              = "firstkey"
  server-name           = "yunus-instance"
  tag                   = "yunus-TF-Module_Lessons"
  num_of_instance       = 2
  docker-instance-ports = [22, 443]
  # insert the 1 required variable here
}