variable "s3_bucket_name" {
  description = "The name of the S3 bucket to be created."
  type        = string
  default     = "kinshuk-remote-bucket" # Ensure this name is globally unique

}
variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table to be created."
  type        = string
  default     = "kinshuk-remote-dynamodb-table"
}