resource "kubernetes_service" "exam_service" {

  metadata {
    name = "exam-service"
    namespace = "${var.deployment_environment}"
  }

  spec {
    selector { run = "exam"  }

    port {
      port = 7107
      target_port = 5000
    }

    type = "ClusterIP"
  }
}
