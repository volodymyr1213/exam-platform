# variable "namespace" {
  # default = "dev"
# }

variable "deployment_environment" {
  default = "dev"
}

variable "dns_endpoint_exam_platform" {
  type = "map"

  default = {
    dev  = "dev-exam.fuchicorp.com"
    qa   = "qa-exam.fuchicorp.com"
    prod = "exam.fuchicorp.com"
  }
}
variable "version" {
  default = "6.0.1"
}
variable "name" {
  default = "exam-platform"
}
variable "domain_name" {
  default = "fuchicorp.com"
}
variable "docker_image" {
  default = "docker.fuchicorp.com/exam-platform-prod"
}
variable "docker_image_tag" {
  default = "0.5"
}
