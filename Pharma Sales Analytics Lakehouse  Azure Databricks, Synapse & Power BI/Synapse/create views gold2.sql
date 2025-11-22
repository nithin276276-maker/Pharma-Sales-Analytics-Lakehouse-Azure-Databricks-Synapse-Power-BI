CREATE VIEW gold2.drug
AS
SELECT
*
FROM OPENROWSET(
    BULK'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/drug/',
    FORMAT = 'PARQUET'
)Query1
----------------

CREATE VIEW gold2.fact_company
AS
SELECT
*
FROM OPENROWSET(
    BULK'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/fact_company/',
    FORMAT = 'PARQUET'
)Query1
---------------------

CREATE VIEW gold2.fact_dosage
AS
SELECT
*
FROM OPENROWSET(
    BULK'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/fact_dosage/',
    FORMAT = 'PARQUET'
)Query1
---------------

CREATE VIEW gold2.fact_marketing_category
AS
SELECT
*
FROM OPENROWSET(
    BULK'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/fact_marketing_category/',
    FORMAT = 'PARQUET'
)Query1
---------------------
CREATE VIEW gold2.fact_route_name
AS
SELECT
*
FROM OPENROWSET(
    BULK'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/fact_route_name/',
    FORMAT = 'PARQUET'
)Query1
----------------------------

CREATE VIEW gold2.fact_top10_brands
AS
SELECT
*
FROM OPENROWSET(
    BULK'https://pharmasalesdatalake.dfs.core.windows.net/gold/openfda/fact_top10_brands/',
    FORMAT = 'PARQUET'
)Query1

