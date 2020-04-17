variable "deployment_environment" {

}

variable "deployment_endpoint" {
  type = "map"

  default = {
    dev  = "dev.exam.fuchicorp.com"
    qa   = "qa.exam.fuchicorp.com"
    prod = "exam.fuchicorp.com"
  }
}


variable "deployment_image" {
  
}
