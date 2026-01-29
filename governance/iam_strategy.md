# IAM Strategy

Each pipeline has a dedicated IAM role.

- Least privilege
- No shared roles
- Scoped S3, Athena, Glue permissions
- PII pipelines explicitly restricted

Secrets stored in AWS Secrets Manager.
