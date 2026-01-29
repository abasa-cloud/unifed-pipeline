# Step Functions Orchestration Design

AWS Step Functions serves as the centralized orchestration layer for all pipelines.

Responsibilities:
- Load and validate pipeline configuration
- Resolve execution windows and backfills
- Fan-out parallel execution safely
- Coordinate Glue jobs and downstream steps
- Handle retries and failure states
- Emit structured metadata and alerts

This removes custom orchestration logic from Glue jobs and ensures consistent behavior across pipelines.
