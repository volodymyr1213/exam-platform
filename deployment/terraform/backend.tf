terraform {
  backend "gcs" {
    bucket  = "fuchicorp-bucket"
    prefix  = "dev/exam"
    project = "fuchicorp-project-88"
  }
}
