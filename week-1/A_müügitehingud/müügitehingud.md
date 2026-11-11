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

-- Mitu rida on sales tabelis kokku?

| ridade_arv |
| ---------- |
| 15234      |

Tulemus: Müügitabelis on ridade koguarv 15234. 
Äririsk Toomasele: LISADA

-- Millised veerud ja andmetüübid tabelis on (Esimesed 10 rida)

| id    | sale_id | invoice_id       | sale_date              | customer_id | product_id | quantity | unit_price | total_price | channel | store_location | payment_method |
| ----- | ------- | ---------------- | ---------------------- | ----------- | ---------- | -------- | ---------- | ----------- | ------- | -------------- | -------------- |
| 10905 | 1       | INV-202301-00001 | 2023-01-10 00:00:00+00 | 2588        | 1274       | 2        | 234.79     | 469.58      | pood    | Tallinn        | kaart          |
| 10906 | 2       | INV-202301-00002 | 2023-01-16 00:00:00+00 | 4338        | 1207       | 2        | 241.13     | 482.26      | pood    | Pärnu          | järelmaks      |
| 10907 | 3       | INV-202301-00003 | 2023-01-05 00:00:00+00 | 4673        | 1264       | 1        | 258.46     | 221.19      | pood    | Pärnu          | järelmaks      |
| 10908 | 4       | INV-202301-00004 | 2023-01-02 00:00:00+00 | 4677        | 1341       | 3        | 45.21      | 135.63      | pood    | Tartu          | sularaha       |
| 10909 | 5       | INV-202301-00005 | 2023-01-13 00:00:00+00 | 2390        | 1284       | 1        | 99.57      | 99.57       | pood    | Tartu          | kaart          |
| 10910 | 6       | INV-202301-00006 | 2023-01-28 00:00:00+00 | 4536        | 1338       | 1        | 282.29     | 282.29      | pood    | Tartu          | järelmaks      |
| 10911 | 7       | INV-202301-00007 | 2023-01-13 00:00:00+00 | 2029        | 1001       | 4        | 157.49     | 629.96      | pood    | Tartu          | järelmaks      |
| 10912 | 8       | INV-202301-00008 | 2023-01-23 00:00:00+00 | 4097        | 1100       | 2        | 126.42     | 252.84      | online  | null           | kaart          |
| 10913 | 9       | INV-202301-00009 | 2023-01-07 00:00:00+00 | 3308        | 1202       | 1        | 22.04      | 22.04       | pood    | Tallinn        | sularaha       |
| 10914 | 10      | INV-202301-00010 | 2023-01-08 00:00:00+00 | 2809        | 1083       | 1        | 72.14      | 72.14       | pood    | Tallinn        | sularaha       |

Tulemus: LISADA 
Äririsk Toomasele: LISADA

--Tallinna kaupluse müügid (uuemad enne)

| id    | sale_id | invoice_id       | sale_date              | customer_id | product_id | quantity | unit_price | total_price | channel | store_location | payment_method |
| ----- | ------- | ---------------- | ---------------------- | ----------- | ---------- | -------- | ---------- | ----------- | ------- | -------------- | -------------- |
| 15291 | 4387    | INV-202401-00095 | 2026-06-28 00:00:00+00 | 2739        | 1258       | 3        | 84.41      | 253.23      | pood    | Tallinn        | järelmaks      |
| 14471 | 3567    | INV-202311-00062 | 2026-06-27 00:00:00+00 | null        | 1198       | 2        | 291.72     | 583.44      | pood    | Tallinn        | kaart          |
| 16513 | 5609    | INV-202404-00255 | 2026-05-18 00:00:00+00 | 3279        | 1313       | 1        | 77.60      | 77.60       | pood    | Tallinn        | kaart          |
| 19514 | 8610    | INV-202411-00111 | 2026-04-26 00:00:00+00 | 4450        | 1217       | 3        | 34.04      | 102.12      | pood    | Tallinn        | järelmaks      |
| 25687 | 7057    | INV-202407-00366 | 2026-03-21 00:00:00+00 | 2221        | 1258       | 2        | 84.41      | 168.82      | pood    | Tallinn        | järelmaks      |
| 21254 | 4758    | INV-202402-00151 | 2026-03-20 00:00:00+00 | 3130        | 1224       | 1        | 222.10     | 222.10      | pood    | Tallinn        | sularaha       |
| 25596 | 7724    | INV-202409-00011 | 2026-03-18 00:00:00+00 | 4178        | 1274       | 1        | 234.79     | 234.79      | pood    | Tallinn        | kaart          |
| 11838 | 934     | INV-202304-00051 | 2026-03-17 00:00:00+00 | 4113        | 1082       | 3        | 100.93     | 302.79      | pood    | Tallinn        | kaart          |
| 23357 | 5802    | INV-202405-00035 | 2026-03-05 00:00:00+00 | 2619        | 1276       | 2        | 187.16     | 374.32      | pood    | Tallinn        | järelmaks      |
| 25006 | 8835    | INV-202411-00336 | 2026-01-25 00:00:00+00 | null        | 1092       | 3        | 144.20     | 432.60      | pood    | Tallinn        | kaart          |
| 23207 | 3816    | INV-202311-00311 | 2026-01-17 00:00:00+00 | 4404        | 1107       | 1        | 279.43     | 279.43      | pood    | Tallinn        | sularaha       |
| 14499 | 3595    | INV-202311-00090 | 2026-01-01 00:00:00+00 | 2997        | 1298       | 1        | 163.53     | 163.53      | pood    | Tallinn        | sularaha       |
| 15424 | 4520    | INV-202401-00228 | 2025-12-20 00:00:00+00 | null        | 1296       | 1        | 301.97     | 301.97      | pood    | Tallinn        | kaart          |
| 11180 | 276     | INV-202302-00015 | 2025-12-14 00:00:00+00 | 2221        | 1316       | 1        | 296.58     | 296.58      | pood    | Tallinn        | kaart          |
| 24937 | 4963    | INV-202403-00022 | 2025-12-10 00:00:00+00 | 4534        | 1095       | 4        | 140.64     | 562.56      | pood    | Tallinn        | järelmaks      |

Tulemus: LISADA
Äririsk Toomasele: LISADA

-- Puuduvate kliendi id-de loendus (null-väärtused)

| puuduv_klient |
| ------------- |
| 1487          |

Tulemus: LISADA
Äririsk Toomasele: LISADA



