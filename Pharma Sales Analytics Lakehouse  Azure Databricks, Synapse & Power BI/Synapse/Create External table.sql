CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Nithin@276';
----------

CREATE DATABASE SCOPED CREDENTIAL cred_nithin3
WITH
IDENTITY = 'Managed Identity';

-----------------
CREATE EXTERNAL DATA SOURCE Pharma_dataSource3
WITH(
    LOCATION = 'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/',
    CREDENTIAL = cred_nithin3
);

--------------------------
CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);
---------------
DROP EXTERNAL TABLE dbo.fact_route_name ;

-------------------------------
CREATE EXTERNAL TABLE drug
(
    product_ndc          VARCHAR(50),
    generic_name         VARCHAR(4000), 
    brand_name           VARCHAR(4000),
    labeler_name         VARCHAR(4000),
    dosage_form          VARCHAR(1000),
    route_name           VARCHAR(1000),
    product_type         VARCHAR(1000),
    marketing_category   VARCHAR(1000),
    active_ingredients   VARCHAR(MAX),
    finished             VARCHAR(50)
)
WITH
(
    LOCATION   = 'drug',              
    DATA_SOURCE = Pharma_dataSource3, 
    FILE_FORMAT = format_parquet
);

SELECT TOP 3 *
FROM dbo.drug
-------------------
CREATE EXTERNAL TABLE dbo.fact_company
(
    labeler_name VARCHAR(4000),
    count INT
)
WITH
(
    LOCATION = 'fact_company',
    DATA_SOURCE = Pharma_dataSource3,
    FILE_FORMAT = format_parquet
    
);
-------------------------
CREATE EXTERNAL TABLE dbo.fact_dosage
(
    dosage_form VARCHAR(1000),
    count INT
)
WITH
(
    LOCATION = 'fact_dosage',
    DATA_SOURCE = Pharma_dataSource3,
    FILE_FORMAT = format_parquet
);
------------------------------
CREATE EXTERNAL TABLE dbo.fact_marketing_category
(
    marketing_category VARCHAR(1000),
    count INT
)
WITH
(
    LOCATION = 'fact_marketing_category',
    DATA_SOURCE = Pharma_dataSource3,
    FILE_FORMAT = format_parquet
);
----------------------------
CREATE EXTERNAL TABLE dbo.fact_route_name
(
    route_name VARCHAR(1000),
    count INT
)
WITH
(
    LOCATION = 'fact_route_name',
    DATA_SOURCE = Pharma_dataSource3,
    FILE_FORMAT = format_parquet
);
-----------------------------------

SELECT * FROM dbo.fact_route_name

























