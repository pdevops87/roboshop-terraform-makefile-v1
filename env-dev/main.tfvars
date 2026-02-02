env = "dev"
ami = "ami-0220d79f3f480ecf5"
components = {
    frontend = {
      instance_type = "t2.micro"
    }
  catalogue = {
    instance_type = "t2.micro"
  }
  mongodb = {
    instance_type = "t2.micro"
  }
}

appl_ports = {
  ssh = {
     from_port = 22
     to_port   = 22
    }
  frontend = {
    from_port = 80
    to_port   = 80
  }
  catalogue = {
    from_port = 8080
    to_port   = 8080
  }
  mongodb = {
    from_port = 27017
    to_port   = 27017
  }
  redis = {
    from_port = 6379
    to_port   = 6379
  }
  mysql = {
    from_port = 3306
    to_port   = 3306
  }
  rabbitmq = {
    from_port = 5672
    to_port   = 5672
  }
  cart = {
    from_port = 8080
    to_port   = 8080
  }
  user = {
    from_port = 8080
    to_port   = 8080
  }
  shipping = {
    from_port = 8080
    to_port   = 8080
  }
  payment = {
    from_port = 8080
    to_port   = 8080
  }

  }

