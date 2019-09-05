terraform {
  backend "gcs" {
    bucket  = "fuchicorp"
    prefix  = "dev/exam"
    project = "fuchicorp-project"
  }
}
