resource "helm_release" "exam-platform" {
  name       = "fuchicorp-exam"
  namespace = "${var.namespace}"
  chart = "./Chart.yaml"
  }