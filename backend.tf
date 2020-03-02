terraform{
  backend "remote"{
    hostname = "app.terraform.io"
    organiaztion  = "EKSTestOrg"
    workspaces{
      name = ""
    }
  }
}
