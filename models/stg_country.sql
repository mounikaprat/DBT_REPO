with s1 as (
    select * from {{source("all_required_tables","Raw_sales")}}),
    s2 as (
        select * from {{ref("country_lookup")}}
    ) select s1.Sales_ID,s1.Sales,s2.CountryName from s1 left join s2 on s1.country = s2.CountryCode 