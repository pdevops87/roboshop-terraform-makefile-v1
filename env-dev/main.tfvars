env = "dev"
ami = "ami-0220d79f3f480ecf5"
components = {
    frontend = {
      instance_type = "t2.micro"
    }
}

appl_ports = {
  ports = {
    ssh = 22
    app = 80
  }
}
