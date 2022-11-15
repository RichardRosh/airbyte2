{{
config(
materialized = "table"
)
}}

with customers as (
    
    SELECT id as Health Service Area,Hospital County,Zip Code - 3 digits,CONCAT(Health Service Area, ' ', Zip Code - 3 digits) AS Health Service Area FROM hospital_inpatient_discharges_sparcs_de_identified_2015
)

select * from hospital_inpatient_discharges_sparcs_de_identified_2015