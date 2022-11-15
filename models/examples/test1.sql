{{
config(
materialized = "table"
)
}}

with customers as (
    
    SELECT id as Health_Service_Area,Hospital_Counrt,Zip_Code,CONCAT(Health_Service_Area, ' ', Zip_Code) Service_Area_Code FROM testtable
)

select * from testable
