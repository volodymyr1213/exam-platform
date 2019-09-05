resource "kubernetes_deployment" "exam-deployment" {

  depends_on = [
    "kubernetes_service_account.exam_service_account",
    "kubernetes_deployment.exam_mysql_deployment",
    "kubernetes_service.mysql_host",
    "kubernetes_secret.exam_secret"
    ]

  metadata {
    namespace = "${var.exam_namespace}"
    name = "exam-deployment"
    labels { run = "exam" }
  }

  spec {
    replicas = 3
    selector {
      match_labels { run = "exam" } }

    template {
      metadata {
        labels { run = "exam" }
      }

      spec {
        image_pull_secrets = [ { name = "nexus-creds" } ]

        container {
          image             = "${var.exam_image}"
          name              = "exam-container"
          command           = [ "python", "/app/app.py" ]
          image_pull_policy = "Always"
        }
      }
    }
  }
}
