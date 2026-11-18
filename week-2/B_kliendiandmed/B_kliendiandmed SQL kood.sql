-- Luua test customers tabel, millel katsetada puhastamise käsklusi enne kui need on aktiveeritud.

drop table if exists customers_test;
create table customer_test as
select * 
from customers;

select *
from customer_test
limit 10;

-- Kontrollin, kas loodud test tabelis ja algses tabelis on sama arv ridu.

select 
  count(*)
from customers; --3150 rida
select
  count(*)
from customer_test; --3150 rida

-- Leida duplikaatsete emailid arv

with dub_email as(
  select
    email,
    count(*) as koopiate_arv
  from customer_test
  where email is not NULL
  group by email
  having count(*) > 1
)
select
  email,
  koopiate_arv,
  sum(koopiate_arv) over() as duplikaatide_kogusumma, -- 258 duplikaatsete emailide kogusumma
  count(koopiate_arv) over() as duplikaatide_arv -- 128 duplikaatset meiliaadressi 
from dub_email
order by koopiate_arv desc;

-- Leia puuduvad nimed
select
  count(*)
    filter(
      where first_name is null or first_name = ''
    ) as null_eesnimi, -- 0 puuduvat eesnime
  count(*)
    filter(
      where last_name is null or last_name = ''
    ) as null_perenimi -- 0 puuduvat perenime
from customer_test; 

-- Kontrollida linnade kirjapilte

select
  city,
  count(*) as arv
from customer_test
group by city
order by city;

--Linnade erinevad kirjapildid
--Haapsalu 	4
--Jõhvi	4
--Kuressaare 	5
--Narva 	4
--Pärnu	5
--Paide	5
--Rakvere	5
--Tallinn	5
--Tartu	5
--Võru	5
--Viljandi	5
--Valga	2

--Kontrollida kontaktandmed - puuduvad telefoninumbrid ja emailid

select
  count(*)
    filter(
      where phone is null or phone = ''
    ) as null_telefon, -- puuduvad telefonid 0
  count(*)
    filter(
      where email is null or email = ''
    ) as null_email -- puuduvad emailid 380
from customer_test;

-- Asenda NULL ees- ja perenimed

update customer_test
set first_name = 'Tundmatu'
where first_name is null or first_name = '';

update customer_test
set last_name = 'Tundmatu'
where last_name is null or last_name = '';

select *
from customer_test
where last_name = 'Tundmatu';
--limit 15;

-- Ühtlusta linnanimed intcap + trim abil

update customer_test
set city = initcap(
  trim(city)
) 
where city != initcap(
  trim(city)
);

-- Standardiseeri email väiketähtedeks

update customer_test
set email = lower(
  trim(email)
)
where email != lower(
  trim(email)
);

-- Kontrolli tulemust

select
  city,
  count(*) as arv
from customer_test
group by city
order by city;

select *
from customer_test;

-- SIIT TEEN customers TABELI KÄSUD JA PÄRINGUD
-- Vaatan kontrolliks algtabelit

select *
from customers
order by city desc;
--limit 15;

-- Kontrollin, kas loodud test tabelis ja algses tabelis on sama arv ridu.

select 
  count(*)
from customers; --3150 rida

-- Leida duplikaatsete emailid arv

with dub_email as(
  select
    email,
    count(*) as koopiate_arv
  from customers
  where email is not NULL
  group by email
  having count(*) > 1
)
select
  email,
  koopiate_arv,
  sum(koopiate_arv) over() as duplikaatide_kogusumma, -- 258 duplikaatsete emailide kogusumma
  count(koopiate_arv) over() as duplikaatide_arv -- 128 duplikaatset meiliaadressi 
from dub_email
order by koopiate_arv desc;

-- Leia puuduvad nimed
select
  count(*)
    filter(
      where first_name is null or first_name = ''
    ) as null_eesnimi, -- 0 puuduvat eesnime
  count(*)
    filter(
      where last_name is null or last_name = ''
    ) as null_perenimi -- 0 puuduvat perenime
from customers; 

-- Kontrollida linnade kirjapilte

select
  city,
  count(*) as arv
from customers
group by city
order by city;

--Linnade erinevad kirjapildid
--Haapsalu 	4
--Jõhvi	4
--Kuressaare 	5
--Narva 	4
--Pärnu	5
--Paide	5
--Rakvere	5
--Tallinn	5
--Tartu	5
--Võru	5
--Viljandi	5
--Valga	2
-- KOKKU 54 erinevat kirjapilti 

--Kontrollida kontaktandmed - puuduvad telefoninumbrid ja emailid

select
  count(*)
    filter(
      where phone is null or phone = ''
    ) as null_telefon, -- puuduvad telefonid 0
  count(*)
    filter(
      where email is null or email = ''
    ) as null_email -- puuduvad emailid 380
from customers;

-- Asenda NULL ees- ja perenimed

update customers
set first_name = 'Tundmatu'
where first_name is null or first_name = '';

update customers
set last_name = 'Tundmatu'
where last_name is null or last_name = '';

select *
from customers
where last_name = 'Tundmatu';
--limit 15;

-- Ühtlusta linnanimed intcap + trim abil

update customers
set city = initcap(
  trim(city)
) 
where city != initcap(
  trim(city)
);

-- Standardiseeri email väiketähtedeks

update customers
set email = lower(
  trim(email)
)
where email != lower(
  trim(email)
);

-- Kontrolli tulemust

select
  city,
  count(*) as arv
from customer_test
group by city
order by city;

select *
from customers;

-- Vaatan puuduvate emailidega kliente

select
  email,
  count(*) as puuduvate_emailidega_kliendid
from customers
where email is null
group by email;

-- Analüüsin lojaalsus programmi

select
  loyalty_tier,
  count(*) as lojaalsus_tasemete_klientide_arv
from customers
group by loyalty_tier
order by loyalty_tier;
