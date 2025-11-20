# Pharma Sales Analytics Lakehouse  Azure Databricks, Synapse & Power BI
## 🛠 Tech Stack
- Azure Data Lake Gen2
- Azure Databricks (PySpark)
- Azure Synapse Serverless SQL
- Azure Data Factory / API Ingestion
- Delta & Parquet
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
