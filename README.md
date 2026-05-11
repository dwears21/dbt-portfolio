Jaffle Shop: dbt Analytics Engineering

### Goal: Transform raw e-commerce data into a production-ready Star Schema using dbt

Architecture:
- Staging: Standardized naming, casting, and deduplication.

- Marts: Modeled dim_customers and fct_orders for BI consumption.

- Quality: Enforced data integrity via automated schema and referential tests.


### Critical Fix: Solving Payment Fan-out:
- The Challenge: Multiple payment methods per order (e.g., Credit Card + Gift Card) caused a grain mismatch. A direct join would "fan out" the data, doubling or tripling reported revenue.
- The Solution: I aggregated payments to the order_id level before joining. This ensured the fct_orders grain remained 1:1, preventing "ghost revenue" and ensuring 100% financial accuracy.

### Tech Stack
 - dbt Core (Modeling & Documentation)

 - SQL (CTEs & Modular logic)

 - YAML (Testing & Validation)
