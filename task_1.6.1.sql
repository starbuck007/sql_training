select name, city, per_diem, date_first, date_last from trip
where name like '%а _._.'
order by date_last desc;