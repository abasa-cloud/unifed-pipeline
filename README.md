# Unified AWS Data Pipeline Management System

This repository demonstrates a unified, AWS-native approach to managing batch and event-driven data pipelines.

## Goals
- Standardize pipeline configuration and execution
- Improve observability, lineage, and security
- Reduce Glue job sprawl
- Enable easy onboarding of new pipelines

## Core Technologies
- AWS Step Functions
- AWS Glue
- Amazon Athena
- Amazon S3
- AWS IAM
- dbt + Snowflake (curated layer)

## Key Idea
Pipelines are defined declaratively via configuration files and executed using shared infrastructure.

See `/docs/design_doc.md` for full details.
