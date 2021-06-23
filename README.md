## tf-gcp

### Service account

Creating service account credentials

```sh
> gcloud iam service-accounts keys create bq-test-sa --project ai-experiments --display-name bq-test-sa
> gcloud iam service-accounts keys --project ai-experiments create bq-test-sa --display-name bq-test-sa
> gcloud iam service-accounts keys --project ai-experiments create bq-test-sa --display-name "bq-test-sa"
> gcloud iam service-accounts keys --project ai-experiments create bq-test-sa
> gcloud iam service-accounts --project ai-experiments create bq-test-sa
> gcloud iam service-accounts keys create credentials.json --iam-account bq-test-sa@ai-experiments.iam.gserviceaccount.com
> gcloud iam service-accounts keys create credentials.json --iam-account bq-test-sa@ai-experiments.iam.gserviceaccount.com --user-output-enabled false

> gcloud projects add-iam-policy-binding ai-experiments --member="serviceAccount:bq-test-sa@ai-experiments.iam.gserviceaccount.com" --role="roles/bigquery.dataOwner" --user-output-enabled false
> gcloud services enable bigquery-json.googleapis.com --project ai-experiments
> cp .\credentials.json ../../../credentials.json
```

### Usage

```sh
terraform init

terraform plan -var-file terraform.tfvars
terraform apply -var-file terraform.tfvars
```

to stop the resources after the completion

```sh
terraform destroy
```

References:

[1] https://cloud.google.com/blog/products/data-analytics/introducing-the-bigquery-terraform-module

[2] https://github.com/terraform-google-modules/terraform-google-bigquery/blob/master/examples/basic_bq
