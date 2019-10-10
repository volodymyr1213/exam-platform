data "template_file" "exam_values" {
  template = "${file("/Chart.yaml")}"
resource "helm_release" "exam-platform" {
  name       = "fuchicorp-exam"
  namespace = "${var.namespace}"
  chart = "./Chart.yaml"
 }

 values = [
    "${data.template_file.exam_values.rendered}"
  ]
}