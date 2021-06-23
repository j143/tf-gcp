variable "expiration" {
    description = "TTL"
    default = null
}

variable "project_id" {
    description = "Project id where the dataset and table will be created"
}

variable "time_partitioning" {
    description = "Configures time-based partioning for this table"
}

variable "dataset_labels" {
    description = "A mapping of labels to assign to the table"
    type = map(string)
}

variable "tables" {
    description = "A set of maps that include both table id, and schema"
    default = []
    type = list(object({
        table_id = string,
        schema = string,
        labels = map(string),
    }))
}
