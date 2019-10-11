
data "template_file" "exam_platform_values" {
  template = "${file("./exam-platform/template_values.yaml")}"
  vars = {
    domain_name = "${var.domain_name}"
    docker_image = "${var.docker_image}"
    docker_image_tag = "${var.docker_image_tag}"
  }
}

resource "local_file" "exam_platform_values_local_file" {
  content  = "${trimspace(data.template_file.exam_platform_values.rendered)}"
  filename = "./exam-platform/.cache/values.yaml"
}


resource "helm_release" "exam_platform" {
  name       = "${var.name}"
  namespace = "${var.namespace}"
  chart = "./exam-platform"
  version    = "${var.version}"
   values = [
    "${data.template_file.exam_platform_values.rendered}"
  ]
}
