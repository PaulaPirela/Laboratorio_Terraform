module "ec2" {
  source = "./ec2"

  ## homework:start
  instance_type = "t3.micro"
  ## homework:end

  ## homework:start
  public_ssh_key = file("./key_paula.pub")
  ## homework:end

  user_data = filebase64("./scripts/user_data.sh")
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}
