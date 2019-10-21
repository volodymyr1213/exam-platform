
variable "deployment_environment" {
  default = "dev"
}

variable "dns_endpoint_exam_platform" {
  type = "map"

  default = {
    dev  = "dev.exam.fuchicorp.com"
    qa   = "qa.exam.fuchicorp.com"
    prod = "exam.fuchicorp.com"
  }
}
variable "version" {
  default = "6.0.1"
}
variable "deployment_image" {}




