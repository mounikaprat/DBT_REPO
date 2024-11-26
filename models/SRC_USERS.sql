with users as(
select * from {{source("all_required_tables","Raw_users")}}),
countries as( select * from {{source("all_required_tables","Raw_country")}})
select u.id,u.user,c.country from users u left join countries c on u.country = c.country_id