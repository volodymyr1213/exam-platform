resource "helm_release" "exam_services_ingress" {

  name = "exam-services-ingress-${var.deployment_environment}"
  namespace = "${var.deployment_environment}"
  chart = "./helm-deployment"

  set {
    name = "dns_endpoint"
    value = "${lookup(var.dns_endpoint_exam, "${var.environment}")}"
  }

  set {
    name = "exam_service"
    value = "${kubernetes_service.exam_service.metadata.0.name}"
  }

  set {
    name = "exam_port"
    value = "${kubernetes_service.exam_service.spec.0.port.0.port}"
  }

  set {
    name = "email"
    value = "${var.lets_encrypt_email}"
  }

}
