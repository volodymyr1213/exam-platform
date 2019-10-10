resource "helm_release" "exam-platform" {
  name       = "${var.name}"
  namespace = "${var.namespace}"
  chart = "./Chart.yaml"
  version    = "${var.version}"

   values = [
    "${file("exam_values.yaml")}"
  ]
}