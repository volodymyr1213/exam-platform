resource "helm_release" "exam-platform" {
  name       = "fuchicorp-exam"
  namespace = "${var.namespace}"
  chart = "./Chart.yaml"
  version    = "6.0.1"
}