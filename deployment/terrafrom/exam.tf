data "template_file" "jenkins_values" {
  template = "${file("/Chart.yaml")}"

resource "local_file" "jenkins_helm_chart_values" {
  content  = "${trimspace(data.template_file.exam_values.rendered)}"
  filename = "/.cache/exam_values.yaml"
}

resource "helm_release" "exam-platform" {
  name       = "fuchicorp-exam"
  namespace = "${var.namespace}"
  chart = "./Chart.yaml"
 }

 values = [
    "${data.template_file.exam_values.rendered}"
  ]
}