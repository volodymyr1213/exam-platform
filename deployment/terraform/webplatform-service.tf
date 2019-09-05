resource "kubernetes_service" "exam_service" {

  metadata {
    name = "exam-service"
    namespace = "${var.exam_namespace}"
  }

  spec {
    selector { run = "exam"  }

    port {
      port = 7103
      target_port = 5000
    }

    type = "ClusterIP"
  }
}
