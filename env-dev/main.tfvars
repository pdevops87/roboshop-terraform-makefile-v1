env = "dev"
ami = "ami-0220d79f3f480ecf5"
components = {
    frontend = {
      ports = { ssh = 22, app_port  = 80 }
      instance_type = "t2.micro"
    }
  catalogue = {
    ports = { ssh = 22, app_port  = 8080 }
    instance_type = "t2.micro"
  }
  mongodb = {
    ports = { ssh = 22, app_port  = 27017 }
    instance_type = "t2.micro"
  }
}



