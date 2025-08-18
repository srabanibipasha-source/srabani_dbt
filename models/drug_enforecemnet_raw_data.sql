{{ config(materialized='table') }}

with drug_enforecemnet_raw_data as (

    select classification,report_date,postal_code,city
    from `bigquery-public-data.fda_drug.drug_enforcement`

)

select *
from drug_enforecemnet_raw_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
