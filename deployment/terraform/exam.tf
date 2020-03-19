module "exam-platform" {
  source  = "fuchicorp/chart/helm"
  # insert the 4 required variables here


  deployment_name        = "exam-platform"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "exam-platform"
  
  template_custom_vars  = {    
    deployment_image    = "${var.deployment_image}"  
    }
}

# data "template_file" "exam_platform_values" {
#   template = "${file("./exam-platform/template_values.yaml")}"
#   vars = {
#     deployment_endpoint = "${lookup(var.dns_endpoint_exam_platform, "${var.deployment_environment}")}"
#     deployment_image = "${var.deployment_image}"
#   }
# }

# resource "local_file" "exam_platform_values_local_file" {
#   content  = "${trimspace(data.template_file.exam_platform_values.rendered)}"
#   filename = "./exam-platform/.cache/values.yaml"
# }


# resource "helm_release" "exam_platform" {
#    name       ="${var.name}-${var.deployment_environment}"
#   namespace = "${var.deployment_environment}"
#   chart = "./exam-platform"
#   version    = "${var.version}"
   
#    values = [
#     "${data.template_file.exam_platform_values.rendered}"
#   ]

# }
