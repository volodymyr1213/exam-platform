resource "kubernetes_deployment" "exam-deployment" {

  metadata {
    namespace = "${var.deployment_environment}"
    name = "exam-deployment"
    labels { run = "exam" }
  }

  spec {
    replicas = 2
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
