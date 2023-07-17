resource "google_service_account" "default" {
  account_id = "pyspark-sa"
  display_name = "cluster service account"
}

resource "google_dataproc_cluster" "simplecluster" {
  name   = "simplecluster"
  region = "us-central1"

  cluster_config {
    staging_bucket = "dataproc_staging_tcarley"

    master_config {
      num_instances = 1
      machine_type = "e2-medium"
    }
    worker_config {
      num_instances = 2
      machine_type = "e2-medium"
    }
  }


}
