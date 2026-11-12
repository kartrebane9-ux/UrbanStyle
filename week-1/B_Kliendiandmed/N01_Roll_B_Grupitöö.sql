--N01 Grupitöö Roll B
--Toomas tahab teada, millised kliendid on UrbanStyle'i andmebaasis. Uuri customers tabelit: mitu klienti on? Millised linnad on esindatud? Kas on duplikaatseid e-maile? Millal kliendid registreerusid?

--Tabeli struktuur
  --Veergude arv - 9
    select * from customers limit 1                                                                                       -- 9 veergu

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Klientide koguarv
  --Ridade arv - 3150
    select count (*) as "Klientide arv" from customers                                                                    -- 3150 rida

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Linnad
  --Näitame kõik linnade variandid - 54
    select count (distinct city) as "Linnu" from customers                                                                -- 54 varianti
    select distinct city as "Linnad" from customers order by "Linnad" asc                                                 -- kõik variandid

  --Näitame unikaalsed linnad eristamata täpitähte - 12
   select count (distinct lower(trim(city))) as "Linnu" from customers                                                   -- 12 linna
   select distinct lower(trim(city)) as "Linnad" from customers order by "Linnad" asc                                    -- muudab kõik tähed väiketähtedeks ja eemaldab tühikuid
   select count (distinct city) as " Esialgseid linnu", count (distinct lower(trim(city))) as "Korrigeritud linnu" from customers   --võrdleme esialgset ja korrigeeritud variandid

  --Näitame unikaalsed linnad eristades täpitähte - 12
   select count (distinct translate(lower(trim(city)), 'õüöä', 'ouoa')) as "Linnu" from customers                        -- 12 linna
   select distinct translate(lower(trim(city)), 'õüöä', 'ouoa') as "Linnad" from customers order by "Linnad" asc         -- muudab kõik tähed väiketähtedeks, eemaldab tühikuid ja täpitähte

  --Kuna täpitähtedes pole vigu, näitame lindade nimed
   select count (distinct initcap(lower(trim(city)))) as "Linnu" from customers                                          -- 12 linna
   select distinct initcap(lower(trim(city))) as "Linnad" from customers order by "Linnad" asc                           -- muudab kõik tähed väiketähtedeks, eemaldab tühikuid ja teeb esimest tähte tagasi suureks

  --Kontroll Kuressaare näidel - 90 klienti sisestatud vs 98 klienti parandatud 
   select count (*) from customers where city ='Kuressaare'                                                              -- 90 klienti märkisid linnana Kuressaare
   select count (*) from customers where initcap(lower(trim(city))) ='Kuressaare'                                        -- tegelikult 98 klienti Kuressaarest
   select * from customers where initcap(lower(trim(city))) ='Kuressaare' order by registration_date asc limit 100       -- näitab 98 klienti Kuressaarest vanimast uusimani

  --Näitame mitu kliente sisestatud linnade järgi
   select city as "Linnad", COUNT(*) as "Klientide arv"                                                                  -- arvutab ridasid, võtab kõik linnade variandid
   from customers
   group by city                                                                                                         -- linnade järgi
   order by "Klientide arv" desc;                                                                                        -- näitab kahanevas järjekorras

  --Näitame mitu kliente korrigeeritud linnade järgi - Tallinnas kõige rohkem (1238), Paides kõige vähem (66). 
   select initcap(lower(trim(city))) as "Linnad", count(*) as "Klientide arv"                                            -- arvutab ridasid, asendab linnade nimesid õigete vastu
   from customers
   group by initcap(lower(trim(city)))                                                                                   -- parandatud linnade nimede järgi
   order by "Klientide arv" desc;                                                                                        -- näitab kahanevas järjekorras

  --Näitame mitu kliente ja % korrigeeritud linnade järgi - Tallinnas kõige rohkem (1238), Paides kõige vähem (66), 2 linna 500+, 3 linna 300+, 6 linna 100+ klientidega 
   select                                                                                                                -- arvutab ridasid, %, asendab linnade nimesid õigete vastu
    initcap(lower(trim(city))) as "Linnad",
    count(*) as "Klientide arv",
    concat(round(count(*)*100/sum(count(*)) over(),1),'%') as "% klientidest"
   from customers
   group by initcap(lower(trim(city)))                                                                                   -- parandatud linnade nimede järgi
   order by "Klientide arv" desc;                                                                                        -- näitab kahanevas järjekorras

  --Näitame kliente ja % + kliendi tasemeid korrigeeritud linnade järgi - Tallinnas kõige rohkem (1238), Paides kõige vähem (66), 2 linna 500+, 3 linna 300+, 6 linna 100+ klientidega 
   select                                                                                                                -- arvutab ridasid, %, asendab linnade nimesid õigete vastu
    initcap(lower(trim(city))) as "Linnad",
    concat(count(*), ' / ', round(count(*)*100.0/sum(count(*)) over(),1),'%') as "Klientide arv (% klientide koguarvust)",
    concat(count(loyalty_tier), ' / ', round(count(loyalty_tier)*100.0/count(*) ,1),'%') as "Klienditasemega kliendid kokku (% linna klientidest)",
    concat(count(*) filter (where loyalty_tier = 'gold'), ' / ', round(count(*) filter (where loyalty_tier = 'gold')*100.0/count(*),1),'%') as "Gold",
    concat(count(*) filter (where loyalty_tier = 'silver'), ' / ', round(count(*) filter (where loyalty_tier = 'silver')*100.0/count(*),1),'%') as "Silver",
    concat(count(*) filter (where loyalty_tier = 'bronze'), ' / ', round(count(*) filter (where loyalty_tier = 'bronze')*100.0/count(*),1),'%') as "Bronze"
   from customers
   group by initcap(lower(trim(city)))                                                                                   -- parandatud linnade nimede järgi
   order by count(*) desc;                                                                                               -- näitab kahanevas järjekorras

  --Sorteerime lojaalsete klientide % järgi
   select                                                                                                                -- arvutab ridasid, %, asendab linnade nimesid õigete vastu
    initcap(lower(trim(city))) as "Linnad",
    concat(count(*), ' / ', round(count(*)*100.0/sum(count(*)) over(),1),'%') as "Klientide arv (% klientide koguarvust)",
    concat(count(loyalty_tier), ' / ', round(count(loyalty_tier)*100.0/count(*) ,1),'%') as "Klienditasemega kliendid kokku (% linna klientidest)",
    concat(count(*) filter (where loyalty_tier = 'gold'), ' / ', round(count(*) filter (where loyalty_tier = 'gold')*100.0/count(*),1),'%') as "Gold",
    concat(count(*) filter (where loyalty_tier = 'silver'), ' / ', round(count(*) filter (where loyalty_tier = 'silver')*100.0/count(*),1),'%') as "Silver",
    concat(count(*) filter (where loyalty_tier = 'bronze'), ' / ', round(count(*) filter (where loyalty_tier = 'bronze')*100.0/count(*),1),'%') as "Bronze"
   from customers
   group by initcap(lower(trim(city)))                                                                                   -- parandatud linnade nimede järgi
   order by round(count(loyalty_tier)*100.0/count(*) ,1) desc;  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Puuduolev data
  --Päringud puuduvate andmete kohta
   select count (*) as "Kilendi number puudu" from customers where customer_id is NULL                                   -- pole selliseid kliente
   select count (*) as "Eesnimi puudu" from customers where first_name is NULL                                           -- pole selliseid kliente
   select count (*) as "Perekonnanimi puudu" from customers where last_name is NULL                                      -- pole selliseid kliente
   select count (*) as "E-mail puudu" from customers where email is NULL                                                 -- 380 klienti
   select count (*) as "Telefon puudu" from customers where phone is NULL                                                -- pole selliseid kliente
   select count (*) as "Linn puudu" from customers where city is NULL                                                    -- pole selliseid kliente
   select count (*) as "Registreerimiskuupäev puudu" from customers where registration_date is NULL                      -- pole selliseid kliente
   select count (*) as "Klienditase puudu" from customers where loyalty_tier is NULL                                     -- 1260 klienti
   select count (*) as "Sünniaasta puudu" from customers where birth_year is NULL                                        -- pole selliseid kliente

  --Päring puuduvate andmete kohta ühes tabelis
    select
     count (*) filter (where customer_id is NULL) as "Kilendi number puudu",                                             -- pole selliseid kliente
     count (*) filter (where first_name is NULL) as "Eesnimi puudu",                                                     -- pole selliseid kliente
     count (*) filter (where last_name is NULL) as "Perekonnanimi puudu",                                                -- pole selliseid kliente
     count (*) filter (where email is NULL) as "E-mail puudu",                                                           -- 380 klienti
     count (*) filter (where phone is NULL) as "Telefon puudu",                                                          -- pole selliseid kliente
     count (*) filter (where city is NULL) as "Linn puudu",                                                              -- pole selliseid kliente
     count (*) filter (where registration_date is NULL) as "Registreerimiskuupäev puudu",                                -- pole selliseid kliente
     count (*) filter (where loyalty_tier is NULL) as "Klienditase puudu",                                               -- 1260 klienti
      count (*) filter (where birth_year is NULL) as "Sünniaasta puudu"                                                  -- pole selliseid kliente
    from customers

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Duplikaatsed kontaktandmed
  --Päring e-mailide kohta - 2770 klienti e-mailiga, 2640 unikaalset e-maili, 380 klienti ilma e-mailita ja 130 duplikaati
    select
      count(*) as "Kliendid kokku",                                                                                     -- kliente kokku
      concat(count(email), ' / ', concat(round(count(email)*100.0/count(*),0), '%')) as "Kliendid e-mailiga",           -- kliente e-mailiga
      concat(count(distinct email), ' / ', concat(round(count(distinct email)*100.0/count(*),0), '%')) as "Unikaalsed e-mailid",   -- Unikaalseid e-maile
      concat(count(*) - count(email), ' / ', concat(round((count(*) - count(email))*100.0/count(*),0), '%')) as "Kliendid e-mailita",  -- Kliente e-mailita
      concat(count(email) - count(distinct email), ' / ', concat(round((count(email) - count(distinct email))*100.0/count(*),0), '%')) as "Duplikaadid",  -- Ainult duplikaadid
      concat(count(*) - count(distinct email), ' / ', concat(round((count(*) - count(distinct email))*100.0/count(*),0), '%')) as "Duplikaadid ja ilma e-mailita" -- Duplikaadid ja ilma e-mailita
    from customers;

  --Päring telefoninumbrite kohta - 3000 klienti numbriga ja 150 duplikaati. Kliente numbrita ei ole.
    select
      count(*) as "Kliendid kokku",                                                                                     -- kliente kokku
      concat(count(phone), ' / ', concat(round(count(phone)*100.0/count(*),0), '%')) as "Kliendid numbriga",            -- kliente numbriga
      concat(count(distinct phone), ' / ', concat(round(count(distinct phone)*100.0/count(*),0), '%')) as "Unikaalsed numbrid",   -- Unikaalseid numbreid
      concat(count(*) - count(phone), ' / ', concat(round((count(*) - count(phone))*100.0/count(*),0), '%')) as "Kliendid numbrita",  -- Kliente numbrita
      concat(count(phone) - count(distinct phone), ' / ', concat(round((count(phone) - count(distinct phone))*100.0/count(*),0), '%')) as "Duplikaadid",  -- Ainult duplikaadid
      concat(count(*) - count(distinct phone), ' / ', concat(round((count(*) - count(distinct phone))*100.0/count(*),0), '%')) as "Duplikaadid ja ilma numbrita" -- Duplikaadid ja ilma numbrita
    from customers;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Klientide registreerimine
  --Uusim (27.02.2025) ja vanim (02.01.2020) klient
   select
      min (registration_date) as "Vanim klient",                                                                          -- kõige varasem kuupäev
      max (registration_date) as "Uusim klient"                                                                           -- kõige hilisem kuupäev
    from customers

  --Kliendid aastate lõikes (aasta järgi)
    select
      extract(year from registration_date) as "Aasta",
      count(*) as "Kliendid"
    from customers
    group by "Aasta"
    order by "Aasta" asc
   
  --Kliendid aastate lõikes (klientide aastas järgi)
    select
      extract(year from registration_date) as "Aasta",
      count(*) as "Kliendid"
    from customers
    group by "Aasta"
    order by "Kliendid" desc
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Järeldused
  --Mina uurisin customers tabelit, milles on 3150 rida ja 9 veergu. Kliendid määrasid 54 erinevat linnade varianti, kuid tegelikult on linnu 12. Tallinnas on  1238 klienti (39,3%), Tartus - 658 (20,9%), Pärnus - 346 (11%), veel kolmes linnas on üle 100 klienti, ülejäänud on alla 100 (alla 3,5%). Ma leidsin ka, et andmetest puuduvad ainult e-mail (veerg email) ja klienditase (veerg loyalty_tier). Viimane võib tähendada, et 1260 klientidest on ühekordsed ja ei registreeritud lojaalsusprogrammis. Lisaks on veel duplikaadid telefoninumbrites (veerg phone). Andmebaasis on 2640 unikaalset e-maili, 380 klienti ilma e-mailita ja 130 duplikaati ning 3000 unikaalset numbrit ja 150 numbrit duplikaadiga.
  --Suurim üllatus - erinevad linnade variandid ja nende arv
  --Soovitus - uuendada linnade informatsiooni ja lisada valikuga listi, et kliendid paneks standardiseeritud variandid
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
