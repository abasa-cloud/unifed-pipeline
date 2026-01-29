# Architecture Overview

This system unifies multiple existing data pipelines under a single orchestration and governance model.

All pipelines are defined declaratively using configuration files and executed using shared AWS infrastructure. Both scheduled and event-driven pipelines follow the same lifecycle, reducing cognitive and operational overhead.

Key benefits:
- Consistent behavior across pipelines
- Reduced Glue job sprawl
- Clear lineage, ownership, and freshness guarantees
- Incremental migration from the current state
