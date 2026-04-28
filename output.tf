# ==================================================
# S3 DATA LAKE OUTPUTS
# ==================================================
output "s3_data_lake_bucket" {
  description = "Main data lake bucket"
  value       = aws_s3_bucket.data_lake.bucket
}

output "s3_logs_bucket" {
  description = "Logs bucket"
  value       = aws_s3_bucket.logs.bucket
}

output "s3_artifacts_bucket" {
  description = "Artifacts bucket (Glue, EMR, CI/CD)"
  value       = aws_s3_bucket.artifacts.bucket
}

# ==================================================
# AWS GLUE OUTPUTS
# ==================================================
output "glue_job_bronze_to_silver" {
  value = aws_glue_job.bronze_to_silver.name
}

output "glue_job_silver_to_gold" {
  value = aws_glue_job.silver_to_gold.name
}

output "glue_job_cleaning" {
  value = aws_glue_job.data_cleaning.name
}

output "glue_database" {
  value = aws_glue_catalog_database.main.name
}

output "glue_crawler" {
  value = aws_glue_crawler.main.name
}

# ==================================================
# EMR OUTPUTS
# ==================================================
output "emr_cluster_id" {
  value = aws_emr_cluster.data_cluster.id
}

output "emr_cluster_name" {
  value = aws_emr_cluster.data_cluster.name
}

output "emr_master_instance" {
  value = aws_emr_cluster.data_cluster.master_instance_type
}

output "emr_worker_instance" {
  value = aws_emr_cluster.data_cluster.core_instance_type
}

output "emr_log_uri" {
  value = aws_emr_cluster.data_cluster.log_uri
}

# ==================================================
# RDS OUTPUTS
# ==================================================
output "rds_postgres_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "rds_postgres_port" {
  value = aws_db_instance.postgres.port
}

output "rds_postgres_db" {
  value = aws_db_instance.postgres.db_name
}

output "rds_mysql_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "rds_mysql_port" {
  value = aws_db_instance.mysql.port
}

output "rds_mysql_db" {
  value = aws_db_instance.mysql.db_name
}

# ==================================================
# LAMBDA OUTPUTS
# ==================================================
output "lambda_ingestion" {
  value = aws_lambda_function.ingestion.function_name
}

output "lambda_event_processor" {
  value = aws_lambda_function.event_processor.function_name
}

# ==================================================
# EVENT DRIVEN
# ==================================================
output "sns_topic_alerts" {
  value = aws_sns_topic.alerts.arn
}

output "sqs_queue_ingestion" {
  value = aws_sqs_queue.ingestion.id
}

# ==================================================
# IAM ROLES
# ==================================================
output "iam_role_glue" {
  value = aws_iam_role.glue_role.arn
}

output "iam_role_emr" {
  value = aws_iam_role.emr_role.arn
}

output "iam_role_lambda" {
  value = aws_iam_role.lambda_role.arn
}

# ==================================================
# CLOUDWATCH
# ==================================================
output "cw_log_group_glue" {
  value = aws_cloudwatch_log_group.glue.name
}

output "cw_log_group_lambda" {
  value = aws_cloudwatch_log_group.lambda.name
}

output "cw_log_group_emr" {
  value = aws_cloudwatch_log_group.emr.name
}
