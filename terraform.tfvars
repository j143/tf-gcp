project_id = "ai-experiments-001"

time_partitioning = "DAY"

dataset_labels = {
    env = "dev"
    billable = "true"
    owner = "janardhan"
}

tables = [
    {
        table_id = "tabl",
        schema = "bq_schema.json",
        labels = {
            env = "dev"
            billable = "true"
            owner = "janardhan"
        },
    },
]
