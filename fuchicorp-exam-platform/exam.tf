resource "helm_release" "exam-platform" {
  name       = "fuchicorp-exam-platform"
  chart      = "./fuchicorp-exam-platform"
  version    = "6.0.1"
  }