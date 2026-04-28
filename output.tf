output "data_lake_bucket" {
  value = aws_s3_bucket.data_lake.bucket
}

output "raw_data_bucket" {
  value = aws_s3_bucket.raw.bucket
}

output "processed_data_bucket" {
  value = aws_s3_bucket.processed.bucket
}

output "rds_endpoint_main" {
  value = aws_db_instance.main.endpoint
}

output "rds_port_main" {
  value = aws_db_instance.main.port
}

output "rds_endpoint_replica" {
  value = aws_db_instance.replica.endpoint
}

output "glue_ingestion_job" {
  value = aws_glue_job.ingestion.name
}

output "glue_transformation_job" {
  value = aws_glue_job.transformation.name
}

output "lambda_trigger_ingestion" {
  value = aws_lambda_function.ingestion.function_name
}

output "emr_cluster_main" {
  value = aws_emr_cluster.main.name
}

output "iam_role_pipeline" {
  value = aws_iam_role.pipeline_role.arn
}

output "sns_alert_topic" {
  value = aws_sns_topic.alerts.arn
}
