terraform{
  backend "remote"{
    hostname = "app.terraform.io"
    organization  = "JenkinsTest"
    workspaces{
      name = "JenkinsTest"
    }
  }
}
