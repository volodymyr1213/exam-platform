variable "exam_namespace" {}

variable "environment" {
  default = "dev"
}

variable "dns_endpoint_exam" {
  type = "map"

  default = {
    dev  = "dev.exam.fuchicorp.com"
    qa   = "qa.exam.fuchicorp.com"
    prod = "exam.fuchicorp.com"
  }
}

variable "exam_image" {
  default = "docker.fuchicorp.com/exam-dev:0.2"
}

variable "lets_encrypt_email" {
  default = "fuchicorpsolutions@gmail.com"
}
