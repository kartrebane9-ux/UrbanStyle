-- Viimased 10 müügitehingut kuupäeva järgi

| sale_id | invoice_id       | sale_date              | total_price | channel |
| ------- | ---------------- | ---------------------- | ----------- | ------- |
| 4387    | INV-202401-00095 | 2026-06-28 00:00:00+00 | 253.23      | pood    |
| 3567    | INV-202311-00062 | 2026-06-27 00:00:00+00 | 583.44      | pood    |
| 4373    | INV-202401-00081 | 2026-06-15 00:00:00+00 | -128.44     | pood    |
| 3532    | INV-202311-00027 | 2026-06-09 00:00:00+00 | 280.13      | pood    |
| 9821    | INV-202502-00051 | 2026-06-04 00:00:00+00 | 420.36      | pood    |
| 6589    | INV-202406-00409 | 2026-05-22 00:00:00+00 | 234.91      | online  |
| 5609    | INV-202404-00255 | 2026-05-18 00:00:00+00 | 77.60       | pood    |
| 2280    | INV-202307-00283 | 2026-05-14 00:00:00+00 | 459.10      | online  |
| 8610    | INV-202411-00111 | 2026-04-26 00:00:00+00 | 102.12      | pood    |
| 3342    | INV-202310-00165 | 2026-04-02 00:00:00+00 | 98.68       | online  |

Tulemus: Viimased registreeritud tehingud toimusid perioodil 02.04.2026 - 28.06.2026
Äririsk Toomasele: Kontrollib müügiandemete asjakohasust ja tuvastab võimalusi (nt tulevikukuupäevade või süsteemikella vead). Kui tehingute järjekord on nihkes, võib see viidata impordiprobleemidele. 

--Mitu müügirida on ilma kuupäevata?

| puuduvad_kuupäevad |
| ------------------ |
| 0                  |

Tulemus: 0
Äririsk: Ilma kuupäevata tehingud ei ole võimalik paigutada õigesse aruandeperioodi ega kuuraportisse.  

-- 10 kõige suuremat müügisummat


| sale_id | invoice_id       | sale_date              | total_price | channel | store_location |
| ------- | ---------------- | ---------------------- | ----------- | ------- | -------------- |
| 2407    | INV-202307-00410 | 2023-07-08 00:00:00+00 | 2170.40     | online  | null           |
| 2407    | INV-202307-00410 | 2023-07-08 00:00:00+00 | 2170.40     | online  | null           |
| 3805    | INV-202311-00300 | 2023-11-22 00:00:00+00 | 2013.10     | pood    | Tartu          |
| 8271    | INV-202410-00165 | 2024-10-30 00:00:00+00 | 1881.65     | online  | null           |
| 1157    | INV-202304-00274 | 2023-04-11 00:00:00+00 | 1881.65     | pood    | Pärnu          |
| 8495    | INV-202410-00389 | 2024-10-19 00:00:00+00 | 1876.70     | online  | null           |
| 8379    | INV-202410-00273 | 2024-10-06 00:00:00+00 | 1872.70     | pood    | Tallinn        |
| 8379    | INV-202410-00273 | 2024-10-06 00:00:00+00 | 1872.70     | pood    | Tallinn        |
| 1925    | INV-202306-00354 | 2023-06-28 00:00:00+00 | 1858.95     | online  | null           |
| 3441    | INV-202310-00264 | 2023-10-03 00:00:00+00 | 1858.95     | pood    | Tallinn        |

Tulemus: Suurima tehingu summa andmebaasis oli 2170. Top10 suurima tehingu vahemik oli 1859€ - 2170€.
Äririsk Toomasele: Äärmuslikult suured summad vajavad ülevaatamist, et eristada reaalseid hulgimüüke või suuroste võimalikest süsteemsetest dubleerimistest või sisestusvigadest.

-- 10 kõige väiksemat positiivset müügisummat

| sale_id | invoice_id       | sale_date              | total_price | channel | store_location |
| ------- | ---------------- | ---------------------- | ----------- | ------- | -------------- |
| 6804    | INV-202407-00113 | 2024-07-29 00:00:00+00 | 15.09       | pood    | Pärnu          |
| 8694    | INV-202411-00195 | 2024-11-12 00:00:00+00 | 15.09       | online  | null           |
| 5846    | INV-202405-00079 | 2024-05-07 00:00:00+00 | 15.09       | online  | null           |
| 6767    | INV-202407-00076 | 2024-07-07 00:00:00+00 | 15.09       | online  | null           |
| 5257    | INV-202403-00316 | 2024-03-21 00:00:00+00 | 15.09       | online  | null           |
| 8545    | INV-202411-00046 | 2024-11-04 00:00:00+00 | 15.09       | pood    | Tallinn        |
| 1395    | INV-202305-00168 | 2023-05-23 00:00:00+00 | 15.09       | online  | null           |
| 714     | INV-202303-00175 | 2023-03-25 00:00:00+00 | 15.09       | pood    | Tallinn        |
| 2474    | INV-202308-00051 | 2023-08-26 00:00:00+00 | 15.09       | online  | null           |
| 2474    | INV-202308-00051 | 2023-08-26 00:00:00+00 | 15.09       | online  | null           |

Tulemus: Väikseim positiivne müügisumma oli 15,09€, mis oli ühtlasi ka top10 kõige madalama positiivse tehingu iga tehingu summa. 
Äririsk Toomasele: Kinnitab reaalsete väikeostude hinnavahemiku ja aitab veenduda, et andmestikus pole testkirjeid võõi mikrotehingute impordivigu.

-- Kas andmetes on null või negatiivseid summasid?

| kahtlased_tehingud |
| ------------------ |
| 305                |

Tulemus: Tuvastati kokku 305 tehingut, mille summa on 0€ või negatiivne. 
Äririsk Toomasele: Null- ja negatiivsed summad viitavad käitlemata tagastusele, testkirjetele või impordivigadele. Kui neid enne aruannete koostamist ei puhastata, moodustavad need koguläibe aruvtamisel eksitavaid tulemusi.

-- Mitu müüki ületab 500 eurot?

| suured_muugid |
| ------------- |
| 2499          |

Tulemus: Üle 500€ tehinguidi oli andmebaasis kokku 2499. 
Äririsk Toomasele: Mõõdab suurostude osakaalu kogukäibest. Kui duplikaatide hulgas on ka suuroste, on finantsrisk ettevõtte käibeülevaatele veelgi suurem. 

