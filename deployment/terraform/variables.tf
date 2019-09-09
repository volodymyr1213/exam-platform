variable "deployment_environment" {}

variable "dns_endpoint_exam" {
  type = "map"

  default = {
    dev  = "dev.exam.fuchicorp.com"
    qa   = "qa.exam.fuchicorp.com"
    prod = "exam.fuchicorp.com"
  }
}

variable "exam_image" {
  default = "docker.fuchicorp.com/exam-platform-prod:0.5"
}

variable "lets_encrypt_email" {
  default = "fuchicorpsolutions@gmail.com"
}
