# End-to-End Architecture

Git → S3 Configs → EventBridge / S3 Events → Step Functions → Glue → Athena / Snowflake → S3 Outputs → Metadata & Alerts

Control Plane:
- Step Functions
- IAM
- EventBridge
- Glue Catalog
- DynamoDB

Data Plane:
- S3
- Athena
- Glue
- Snowflake
