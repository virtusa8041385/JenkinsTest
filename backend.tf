terraform{
  backend "remote"{
    hostname = "app.terraform.io"
    organiaztion  = "JenkinsTest"
    workspaces{
      name = "JenkinsTest"
    }
  }
}
