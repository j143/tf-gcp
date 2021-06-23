output "dataset_id" {
  value = module.bigquery.dataset_id
  description = "Unique id for the dataset being provisioned"
}

output "dataset_name" {
    value = module.bigquery.dataset_name
    description = ""
}

output "dataset_project" {
    value = module.bigquery.dataset_project
    description = ""
}

output "table_id" {
    value = module.bigquery.table_id
    description = ""
}

output "table_name" {
    value = module.bigquery.table_name
    description = ""
}

output "dataset_labels" {
    value = module.bigquery.dataset_labels
    description = ""
}

output "table_labels" {
    value = module.bigquery.table_labels
    description = ""
}
