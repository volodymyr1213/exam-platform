
data "template_file" "exam_platform_values" {
  template = "${file("./exam-platform/template_values.yaml")}"
  vars = {
    deployment_endpoint = "${lookup(var.dns_endpoint_exam_platform, "${var.deployment_environment}")}"
    deployment_image = "${var.deployment_image}"
  }
}

resource "local_file" "exam_platform_values_local_file" {
  content  = "${trimspace(data.template_file.exam_platform_values.rendered)}"
  filename = "./exam-platform/.cache/values.yaml"
}


resource "helm_release" "exam_platform" {
  name       = "${var.deployment_environment}-exam-platform"
  namespace = "${var.deployment_image}"
  chart = "./exam-platform"
  version    = "${var.version}"
   
   values = [
    "${data.template_file.exam_platform_values.rendered}"
  ]

}
