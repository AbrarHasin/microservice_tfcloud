locals {
  region = "ap-southeast-1"
  #   name   = "ex-${basename(path.cwd)}"
  name = "microservice"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  container_name = "ecs-sample"
  container_port = 80

  tags = {
    Name    = local.name
    Example = local.name
    #Repository = "https://github.com/terraform-aws-modules/terraform-aws-ecs"
  }
}