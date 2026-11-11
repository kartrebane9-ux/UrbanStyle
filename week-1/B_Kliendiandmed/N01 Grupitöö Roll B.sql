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
   SELECT city, COUNT(*) AS "Klientide arv"                                                                              -- arvutab ridasid, võtab kõik linnade variandid
   FROM customers
   GROUP BY city                                                                                                         -- linnade järgi
   ORDER BY "Klientide arv" DESC;                                                                                        -- näitab kahanevas järjekorras

  --Näitame mitu kliente korrigeeritud linnade järgi - Tallinnas kõige rohkem (1238), Paides kõige vähem (66), 2 linna 500+, 3 linna 300+, 6 linna 100+ klientidega 
   SELECT initcap(lower(trim(city))), COUNT(*) AS "Klientide arv"                                                        -- arvutab ridasid, asendab linnade nimesid õigete vastu
   FROM customers
   GROUP BY initcap(lower(trim(city)))                                                                                   -- parandatud linnade nimede järgi
   ORDER BY "Klientide arv" DESC;                                                                                        -- näitab kahanevas järjekorras

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

  --Päring puuduvate andmete kohta
    select
     count (*) filter (where customer_id is NULL) as "Kilendi number puudu",                                             -- pole selliseid kliente
     count (*) filter (where first_name is NULL) as "Eesnimi puudu",                                                     -- pole selliseid kliente
     count (*) filter (where last_name is NULL) as "Perekonnanimi puudu",                                                -- pole selliseid kliente
     count (*) filter (where email is NULL) as "E-mail puudu",                                                           -- 380 klienti
     count (*) filter (where phone is NULL) as "Telefon puudu",                                                          -- pole selliseid kliente
     count (*) filter (where city is NULL) as "Linn puudu",                                                              -- pole selliseid kliente
     count (*) filter (where registration_date is NULL) as "Registreerimiskuupäev puudu",                                -- pole selliseid kliente
     count (*) filter (where loyalty_tier is NULL) as "Klienditase puudu",                                               -- 1260 klienti
      count (*) filter (where birth_year is NULL) as "Sünniaasta puudu"                                                   -- pole selliseid kliente
    from customers

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Duplikaatsed e-mailid
  --Päring e-mailide kohta - 2770 klienti e-mailiga, 2640 unikaalset e-maili, 380 klienti ilma e-mailita ja 130 duplikaati
    select
      count(*) as "Kliendid kokku",                                                                                       -- kliente kokku
      count(email) as "Kliendid e-mailiga",                                                                               -- kliente e-mailiga
      count(distinct email) as "Unikaalsed e-mailid",                                                                     -- Unikaalseid e-maile
      count(*) - count(email) as "Kliendid e-mailita",                                                                    -- Kliente e-mailita
      count(email) - count(distinct email) as "Duplikaadid",                                                              -- Ainult duplikaadid
      count(*) - count(distinct email) as "Duplikaadid ja ilma e-mailita"                                                 -- Duplikaadid ja ilma e-mailita
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
  --Mina uurisin customers tabelit, milles on 3150 rida ja 9 veergu. Kliendid määrasid 54 erinevat linnade varianti, kuid tegelikult on linnu 12. Tallinnas on peaaegu 1250 klienti, Tartus - peaaegu 650 ja , Pärnus - peaaegu 350, veel kolmes linnas on üle 100 klienti. Ma ka leidsin, et andmetest puuduvad ainult e-mail ja klienditase (viimane võib tähendada, et 1260 klientidest on ühekordsed ja ei registreeritud lojaalsusprogrammis). Andmebaasis on 2640 unikaalset e-maili, 380 klienti ilma e-mailita ja 130 duplikaati.
  --Suurim üllatus - erinevad linnade variandid ja nende arv
  --Soovitus - uuendada linnade informatsiooni ja lisada valikuga listi, et kliendid paneks standardiseeritud variandid
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------