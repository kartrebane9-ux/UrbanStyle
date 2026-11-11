-- Viimased 10 müügitehingut kuupäeva järgi

select
  sale_id,
  invoice_id,
  sale_date,
  total_price,
  channel
from sales
order by sale_date desc
limit 10;

--Mitu müügirida on ilma kuupäevata?

select
  count(*) - count(sale_date) as puuduvad_kuupäevad
from sales;

-- 10 kõige suuremat müügisummat

select
  sale_id,
  invoice_id,
  sale_date,
  total_price,
  channel,
  store_location
from sales
order by total_price desc
limit 10;

-- 10 kõige väiksemat müügisummat

select
  sale_id,
  invoice_id,
  sale_date,
  total_price,
  channel,
  store_location
from sales
where total_price > 0
order by total_price asc
limit 10;

-- Kas andmetes on null või negatiivseid summasid?

select count(*) as kahtlased_tehingud
from sales
where total_price <= 0;

-- Mitu müüki ületab 500 eurot?

select count(*) as suured_muugid
from sales
where total_price > 500;


