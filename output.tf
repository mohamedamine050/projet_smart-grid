output "s3_data_bucket" {
  description = "S3 bucket for raw and processed data"
  value       = aws_s3_bucket.data_lake.bucket
}

output "rds_endpoint" {
  description = "RDS PostgreSQL endpoint"
  value       = aws_db_instance.postgres.endpoint
}

output "rds_port" {
  description = "RDS port"
  value       = aws_db_instance.postgres.port
}

output "glue_job_name" {
  description = "AWS Glue ETL job name"
  value       = aws_glue_job.etl_job.name
}

output "lambda_function_name" {
  description = "Lambda function for ingestion"
  value       = aws_lambda_function.ingestion.function_name
}

output "iam_role_arn" {
  description = "IAM Role for data pipeline"
  value       = aws_iam_role.data_pipeline_role.arn
}

output "sns_topic_arn" {
  description = "SNS topic for alerts"
  value       = aws_sns_topic.alerts.arn
}
