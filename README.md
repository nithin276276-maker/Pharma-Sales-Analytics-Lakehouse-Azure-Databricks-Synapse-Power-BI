# Pharma Sales Analytics Lakehouse  Azure Databricks, Synapse & Power BI
## 🛠 Tech Stack
- Azure Data Lake Gen2
- Azure Data Factory / API Ingestion
- Azure Databricks (PySpark)
- Delta & Parquet
- Azure Synapse Serverless SQL
- Power BI Dashboard

---

## 📌 Pipeline Flow
```mermaid
graph TD
A[OpenFDA API] --> B[Bronze - ADLS]
B --> C[Silver - Databricks Transformations]
C --> D[Gold - Curated Parquet]
D --> E[Synapse External Tables]
E --> F[Power BI Dashboard]
