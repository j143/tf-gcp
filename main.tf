provider "google" {
    version = "~> 2.5.0"

    # Update credentials to the correct location
    credentials = file(".ssh/bq-key.json")
}

module "bigquery" {
    source = "terraform-google-modules/bigquery/google"
    version = "~> 2.0.0"
    dataset_id = "foo"
    dataset_name = "foo"
    description = "description"
    expiration = var.expiration
    project_id = var.project_id
    location = "US"
    tables = var.tables
    time_partitioning = var.time_partitioning
    dataset_labels = var.dataset_labels
}
