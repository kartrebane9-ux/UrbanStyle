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

| unikaalsed_arved |
| ---------------- |
| 10118            |

Tulemus: Müügitabelis on ridade koguarv 15234. 
Äririsk Toomasele: Ridade üldarv in analüüsi lähtepunkt. Kui võrrelda seda arvu unikaalsete arvete arvuga, selgub, et andmebaasis on üle 5000 duplikaatse rea. Kui kogukäivet arvutada ridade üldarvu põhjal ilma duplikaate eemaldamata, näitab müügiaruanne tegelikust oluliselt suuremat käivet, mis moonutab ettevõtte aruandeperioodi finantstulemusi.

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

Tulemus: Kuvab tabeli 10 esimest rida ja näitab ära kõik veergude nimed ning andmetüübid. 
Äririsk Toomasele: Vajalik andmebaasi struktuuri esmaseks auditeerimiseks. Kui mõne veeru andmetüüp või kirjapilt on vigane, võivad järgnevad automaatsed päringud ja liidestused teiste süsteemidega anda veateateid või ebaõnnestuda.

--Tallinna kaupluse müügid (uuemad enne, 15 tükki)

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

Tulemus: Väljastab 15 kõige värskekamt Tallinna füüsilise kaupluse tehingut koos kõigi veergude andemtega. 
Äririsk Toomasele: Võimaldab kontrollida Tallinna esinduskaupluse müügiandemete ajakohasust ja kronoloogilist loogilisust. Lisaks aitab päring veenduda, et veebiüüke ei segata füüsilise kaupluse müügitulemusega.

-- Puuduvate kliendi id-de loendus (null-väärtused)

| puuduv_klient |
| ------------- |
| 1487          |

Tulemus: Loeb kokku tehinguread, kus kliendi ID puudub ehk väärtus on NULL.
Äririsk Toomasele: Kliendi id-ta tehinguid ei saa seostada konkreetse kliendiprofiili ega lojaalusprogrammiga. Kui suur osa tehingutest on ananüümsed takistab see turundusmeeskonnal korduvostude ja kliendikäitumise analüüsimist.

-- Unikaalsed müügikanalid

| channel |
| ------- |
| online  |
| pood    |

Tulemus: Tuvastatud unikaalsed müügikanalid on "online" ja "pood"
Äriline väärtus: Kontrollib müügikanalite andmekvaliteeti ja kirjapilti. Kui andmetesse oleks sattunud kirjaveaga kanaleid, tekitaks see müügiraportis lahknevusi.

-- Tehingute arv iga kaupluse kohta

| store_location | tehingud |
| -------------- | -------- |
| Tallinn        | 5704     |
| null           | 5204     |
| Tartu          | 2708     |
| Pärnu          | 1618     |

Tulemus: Kuvab tehingute koguarvu kaupluste lõikes ning näitab ka NULL väärtuste arvu. NULL väärtuste arvud tõenaoliselt viitavad online müükidele.
Äriline väärtus: Annab kiire ülevaate kaupluste tehingute mahust. NULL väärtused selle päringu tulemuses tõeäoliselt viitavad e-poe müükidele, mis on äriliselt loogiline, kuna veebitellimusel puudub füüsilise poe asukoht.

-- Kombineeritud tingimused: Tallinna müügid üle 100 EUR

| id    | sale_id | invoice_id       | sale_date              | customer_id | product_id | quantity | unit_price | total_price | channel | store_location | payment_method |
| ----- | ------- | ---------------- | ---------------------- | ----------- | ---------- | -------- | ---------- | ----------- | ------- | -------------- | -------------- |
| 19283 | 8379    | INV-202410-00273 | 2024-10-06 00:00:00+00 | 2712        | 1210       | 5        | 374.54     | 1872.70     | pood    | Tallinn        | kaart          |
| 23487 | 8379    | INV-202410-00273 | 2024-10-06 00:00:00+00 | 2712        | 1210       | 5        | 374.54     | 1872.70     | pood    | Tallinn        | kaart          |
| 14345 | 3441    | INV-202310-00264 | 2023-10-03 00:00:00+00 | 2707        | 1134       | 5        | 371.79     | 1858.95     | pood    | Tallinn        | sularaha       |
| 18447 | 7543    | INV-202408-00341 | 2024-08-06 00:00:00+00 | 2961        | 1042       | 5        | 347.84     | 1739.20     | pood    | Tallinn        | kaart          |
| 25055 | 9684    | INV-202501-00242 | 2025-01-15 00:00:00+00 | 2288        | 1031       | 4        | 434.08     | 1736.32     | pood    | Tallinn        | kaart          |
| 20588 | 9684    | INV-202501-00242 | 2025-01-15 00:00:00+00 | 2288        | 1031       | 4        | 434.08     | 1736.32     | pood    | Tallinn        | kaart          |
| 14548 | 3644    | INV-202311-00139 | 2023-11-03 00:00:00+00 | 3166        | 1009       | 5        | 332.55     | 1662.75     | pood    | Tallinn        | kaart          |
| 11048 | 144     | INV-202301-00144 | 2023-01-07 00:00:00+00 | 3446        | 1009       | 5        | 332.55     | 1662.75     | pood    | Tallinn        | järelmaks      |
| 13407 | 2503    | INV-202308-00080 | 2023-08-27 00:00:00+00 | 2397        | 1069       | 4        | 402.62     | 1610.48     | pood    | Tallinn        | järelmaks      |
| 20492 | 9588    | INV-202501-00146 | 2025-01-13 00:00:00+00 | 2687        | 1049       | 5        | 308.84     | 1544.20     | pood    | Tallinn        | järelmaks      |
| 15374 | 4470    | INV-202401-00178 | 2024-01-20 00:00:00+00 | 4791        | 1049       | 5        | 308.84     | 1544.20     | pood    | Tallinn        | sularaha       |
| 19905 | 9001    | INV-202412-00109 | 2024-12-01 00:00:00+00 | 3367        | 1149       | 5        | 304.14     | 1520.70     | pood    | Tallinn        | järelmaks      |
| 25127 | 9212    | INV-202412-00320 | 2024-12-04 00:00:00+00 | 4178        | 1295       | 4        | 375.34     | 1501.36     | pood    | Tallinn        | järelmaks      |
| 24220 | 9212    | INV-202412-00320 | 2024-12-04 00:00:00+00 | 4178        | 1295       | 4        | 375.34     | 1501.36     | pood    | Tallinn        | järelmaks      |
| 20116 | 9212    | INV-202412-00320 | 2024-12-04 00:00:00+00 | 4178        | 1295       | 4        | 375.34     | 1501.36     | pood    | Tallinn        | järelmaks      |
| 19143 | 8239    | INV-202410-00133 | 2024-10-05 00:00:00+00 | 4368        | 1210       | 4        | 374.54     | 1498.16     | pood    | Tallinn        | kaart          |
| 13726 | 2822    | INV-202308-00399 | 2023-08-20 00:00:00+00 | 2629        | 1134       | 4        | 371.79     | 1487.16     | pood    | Tallinn        | sularaha       |
| 23266 | 2822    | INV-202308-00399 | 2023-08-20 00:00:00+00 | 2629        | 1134       | 4        | 371.79     | 1487.16     | pood    | Tallinn        | sularaha       |
| 24987 | 209     | INV-202301-00209 | 2023-01-19 00:00:00+00 | null        | 1108       | 4        | 371.05     | 1484.20     | pood    | Tallinn        | sularaha       |
| 11113 | 209     | INV-202301-00209 | 2023-01-19 00:00:00+00 | null        | 1108       | 4        | 371.05     | 1484.20     | pood    | Tallinn        | sularaha       |
| 11942 | 1038    | INV-202304-00155 | 2023-04-20 00:00:00+00 | 4505        | 1281       | 5        | 292.61     | 1463.05     | pood    | Tallinn        | järelmaks      |
| 23857 | 4921    | INV-202402-00314 | 2024-02-19 00:00:00+00 | 2327        | 1240       | 4        | 356.57     | 1426.28     | pood    | Tallinn        | järelmaks      |
| 15825 | 4921    | INV-202402-00314 | 2024-02-19 00:00:00+00 | 2327        | 1240       | 4        | 356.57     | 1426.28     | pood    | Tallinn        | järelmaks      |
| 19960 | 9056    | INV-202412-00164 | 2024-12-11 00:00:00+00 | null        | 1338       | 5        | 282.29     | 1411.45     | pood    | Tallinn        | sularaha       |
| 23276 | 4221    | INV-202312-00388 | 2023-12-05 00:00:00+00 | 2412        | 1293       | 4        | 351.33     | 1405.32     | pood    | Tallinn        | kaart          |
| 20696 | 9792    | INV-202502-00022 | 2025-02-10 00:00:00+00 | null        | 1150       | 5        | 280.02     | 1400.10     | pood    | Tallinn        | sularaha       |
| 24091 | 9792    | INV-202502-00022 | 2025-02-10 00:00:00+00 | null        | 1150       | 5        | 280.02     | 1400.10     | pood    | Tallinn        | sularaha       |
| 12353 | 1449    | INV-202305-00222 | 2023-05-24 00:00:00+00 | 3732        | 1027       | 4        | 346.70     | 1386.80     | pood    | Tallinn        | sularaha       |
| 19050 | 8146    | INV-202410-00040 | 2024-10-30 00:00:00+00 | 4361        | 1199       | 5        | 276.97     | 1384.85     | pood    | Tallinn        | sularaha       |
| 21111 | 9556    | INV-202501-00114 | 2025-01-19 00:00:00+00 | 4568        | 1328       | 5        | 274.87     | 1374.35     | pood    | Tallinn        | kaart          |
| 20460 | 9556    | INV-202501-00114 | 2025-01-19 00:00:00+00 | 4568        | 1328       | 5        | 274.87     | 1374.35     | pood    | Tallinn        | kaart          |
| 23339 | 1397    | INV-202305-00170 | 2023-05-18 00:00:00+00 | 3648        | 1273       | 5        | 274.37     | 1371.85     | pood    | Tallinn        | sularaha       |
| 12301 | 1397    | INV-202305-00170 | 2023-05-18 00:00:00+00 | 3648        | 1273       | 5        | 274.37     | 1371.85     | pood    | Tallinn        | sularaha       |
| 14152 | 3248    | INV-202310-00071 | 2023-10-20 00:00:00+00 | 3184        | 1167       | 5        | 270.99     | 1354.95     | pood    | Tallinn        | sularaha       |
| 22336 | 924     | INV-202304-00041 | 2023-04-08 00:00:00+00 | 3001        | 1350       | 5        | 270.69     | 1353.45     | pood    | Tallinn        | järelmaks      |
| 11828 | 924     | INV-202304-00041 | 2023-04-08 00:00:00+00 | 3001        | 1350       | 5        | 270.69     | 1353.45     | pood    | Tallinn        | järelmaks      |
| 18574 | 7670    | INV-202408-00468 | 2024-08-10 00:00:00+00 | 4585        | 1009       | 4        | 332.55     | 1330.20     | pood    | Tallinn        | järelmaks      |
| 12547 | 1643    | INV-202306-00072 | 2023-06-29 00:00:00+00 | 4530        | 1031       | 3        | 434.08     | 1302.24     | pood    | Tallinn        | sularaha       |
| 21993 | 2741    | INV-202308-00318 | 2023-08-18 00:00:00+00 | 3945        | 1251       | 5        | 257.39     | 1286.95     | pood    | Tallinn        | kaart          |
| 13645 | 2741    | INV-202308-00318 | 2023-08-18 00:00:00+00 | 3945        | 1251       | 5        | 257.39     | 1286.95     | pood    | Tallinn        | kaart          |
| 11020 | 116     | INV-202301-00116 | 2023-01-01 00:00:00+00 | 2441        | 1223       | 4        | 319.98     | 1279.92     | pood    | Tallinn        | järelmaks      |
| 24084 | 3423    | INV-202310-00246 | 2023-10-12 00:00:00+00 | 2684        | 1006       | 4        | 319.42     | 1277.68     | pood    | Tallinn        | kaart          |
| 14327 | 3423    | INV-202310-00246 | 2023-10-12 00:00:00+00 | 2684        | 1006       | 4        | 319.42     | 1277.68     | pood    | Tallinn        | kaart          |
| 11351 | 447     | INV-202302-00186 | 2023-02-24 00:00:00+00 | 4146        | 1303       | 4        | 312.41     | 1249.64     | pood    | Tallinn        | kaart          |
| 20548 | 9644    | INV-202501-00202 | 2025-01-10 00:00:00+00 | 2456        | 1085       | 5        | 247.81     | 1239.05     | pood    | Tallinn        | järelmaks      |
| 20934 | 10030   | INV-202502-00260 | 2025-02-25 00:00:00+00 | 3014        | 1300       | 5        | 247.52     | 1237.60     | pood    | Tallinn        | kaart          |
| 24011 | 10030   | INV-202502-00260 | 2025-02-25 00:00:00+00 | 3014        | 1300       | 5        | 247.52     | 1237.60     | pood    | Tallinn        | kaart          |
| 15395 | 4491    | INV-202401-00199 | 2024-01-07 00:00:00+00 | 4217        | 1049       | 4        | 308.84     | 1235.36     | pood    | Tallinn        | järelmaks      |
| 21435 | 9451    | INV-202501-00009 | 2025-01-24 00:00:00+00 | 4185        | 1347       | 5        | 246.97     | 1234.85     | pood    | Tallinn        | järelmaks      |
| 20355 | 9451    | INV-202501-00009 | 2025-01-24 00:00:00+00 | 4185        | 1347       | 5        | 246.97     | 1234.85     | pood    | Tallinn        | järelmaks      |
| 15200 | 4296    | INV-202401-00004 | 2024-01-15 00:00:00+00 | 2863        | 1312       | 5        | 243.93     | 1219.65     | pood    | Tallinn        | järelmaks      |
| 16603 | 5699    | INV-202404-00345 | 2024-04-12 00:00:00+00 | 2616        | 1112       | 5        | 242.43     | 1212.15     | pood    | Tallinn        | sularaha       |
| 19597 | 8693    | INV-202411-00194 | 2024-11-22 00:00:00+00 | 4307        | 1058       | 4        | 302.86     | 1211.44     | pood    | Tallinn        | järelmaks      |
| 12670 | 1766    | INV-202306-00195 | 2023-06-11 00:00:00+00 | 3703        | 1069       | 3        | 402.62     | 1207.86     | pood    | Tallinn        | kaart          |
| 12055 | 1151    | INV-202304-00268 | 2023-04-23 00:00:00+00 | 3944        | 1069       | 3        | 402.62     | 1207.86     | pood    | Tallinn        | järelmaks      |
| 20108 | 9204    | INV-202412-00312 | 2024-12-08 00:00:00+00 | 3605        | 1314       | 5        | 234.91     | 1174.55     | pood    | Tallinn        | sularaha       |
| 21535 | 9204    | INV-202412-00312 | 2024-12-08 00:00:00+00 | 3605        | 1314       | 5        | 234.91     | 1174.55     | pood    | Tallinn        | sularaha       |
| 17737 | 6833    | INV-202407-00142 | 2024-07-20 00:00:00+00 | 3605        | 1274       | 5        | 234.79     | 1173.95     | pood    | Tallinn        | järelmaks      |
| 13930 | 3026    | INV-202309-00177 | 2023-09-18 00:00:00+00 | 3057        | 1274       | 5        | 234.79     | 1173.95     | pood    | Tallinn        | järelmaks      |
| 23204 | 6833    | INV-202407-00142 | 2024-07-20 00:00:00+00 | 3605        | 1274       | 5        | 234.79     | 1173.95     | pood    | Tallinn        | järelmaks      |
| 11613 | 709     | INV-202303-00170 | 2023-03-12 00:00:00+00 | 3521        | 1274       | 5        | 234.79     | 1173.95     | pood    | Tallinn        | järelmaks      |
| 25287 | 3026    | INV-202309-00177 | 2023-09-18 00:00:00+00 | 3057        | 1274       | 5        | 234.79     | 1173.95     | pood    | Tallinn        | järelmaks      |
| 13661 | 2757    | INV-202308-00334 | 2023-08-16 00:00:00+00 | 3817        | 1198       | 4        | 291.72     | 1166.88     | pood    | Tallinn        | järelmaks      |
| 16448 | 5544    | INV-202404-00190 | 2024-04-06 00:00:00+00 | 2997        | 1198       | 4        | 291.72     | 1166.88     | pood    | Tallinn        | sularaha       |
| 11688 | 784     | INV-202303-00245 | 2023-03-23 00:00:00+00 | 2029        | 1198       | 4        | 291.72     | 1166.88     | pood    | Tallinn        | järelmaks      |
| 19369 | 8465    | INV-202410-00359 | 2024-10-13 00:00:00+00 | 4304        | 1198       | 4        | 291.72     | 1166.88     | pood    | Tallinn        | kaart          |
| 21297 | 8465    | INV-202410-00359 | 2024-10-13 00:00:00+00 | 4304        | 1198       | 4        | 291.72     | 1166.88     | pood    | Tallinn        | kaart          |
| 23099 | 6270    | INV-202406-00090 | 2024-06-30 00:00:00+00 | 4698        | 1340       | 5        | 229.01     | 1145.05     | pood    | Tallinn        | järelmaks      |
| 24844 | 6270    | INV-202406-00090 | 2024-06-30 00:00:00+00 | 4698        | 1340       | 5        | 229.01     | 1145.05     | pood    | Tallinn        | järelmaks      |
| 17174 | 6270    | INV-202406-00090 | 2024-06-30 00:00:00+00 | 4698        | 1340       | 5        | 229.01     | 1145.05     | pood    | Tallinn        | järelmaks      |
| 12963 | 2059    | INV-202307-00062 | 2023-07-26 00:00:00+00 | 2969        | 1336       | 3        | 376.33     | 1128.99     | pood    | Tallinn        | kaart          |
| 19755 | 8851    | INV-202411-00352 | 2024-11-10 00:00:00+00 | 3545        | 1090       | 4        | 281.19     | 1124.76     | pood    | Tallinn        | järelmaks      |
| 14474 | 3570    | INV-202311-00065 | 2023-11-02 00:00:00+00 | 2629        | 1090       | 4        | 281.19     | 1124.76     | pood    | Tallinn        | järelmaks      |
| 23611 | 8851    | INV-202411-00352 | 2024-11-10 00:00:00+00 | 3545        | 1090       | 4        | 281.19     | 1124.76     | pood    | Tallinn        | järelmaks      |
| 12139 | 1235    | INV-202305-00008 | 2023-05-28 00:00:00+00 | 4340        | 1210       | 3        | 374.54     | 1123.62     | pood    | Tallinn        | sularaha       |
| 16653 | 5749    | INV-202404-00395 | 2024-04-01 00:00:00+00 | 3810        | 1008       | 4        | 280.13     | 1120.52     | pood    | Tallinn        | kaart          |
| 23145 | 1537    | INV-202305-00310 | 2023-05-19 00:00:00+00 | null        | 1075       | 4        | 278.59     | 1114.36     | pood    | Tallinn        | sularaha       |
| 19956 | 9052    | INV-202412-00160 | 2024-12-29 00:00:00+00 | 3722        | 1075       | 4        | 278.59     | 1114.36     | pood    | Tallinn        | kaart          |
| 12441 | 1537    | INV-202305-00310 | 2023-05-19 00:00:00+00 | 2917        | 1075       | 4        | 278.59     | 1114.36     | pood    | Tallinn        | sularaha       |
| 23090 | 4060    | INV-202312-00227 | 2023-12-08 00:00:00+00 | 3583        | 1108       | 3        | 371.05     | 1113.15     | pood    | Tallinn        | sularaha       |
| 14964 | 4060    | INV-202312-00227 | 2023-12-08 00:00:00+00 | 3583        | 1108       | 3        | 371.05     | 1113.15     | pood    | Tallinn        | sularaha       |
| 22957 | 4060    | INV-202312-00227 | 2023-12-08 00:00:00+00 | 3583        | 1108       | 3        | 371.05     | 1113.15     | pood    | Tallinn        | sularaha       |
| 25454 | 6067    | INV-202405-00300 | 2024-05-13 00:00:00+00 | 3605        | 1224       | 5        | 222.10     | 1110.50     | pood    | Tallinn        | sularaha       |
| 16971 | 6067    | INV-202405-00300 | 2024-05-13 00:00:00+00 | 3605        | 1224       | 5        | 222.10     | 1110.50     | pood    | Tallinn        | sularaha       |
| 26014 | 6067    | INV-202405-00300 | 2024-05-13 00:00:00+00 | 3605        | 1224       | 5        | 249.34     | 1110.50     | pood    | Tallinn        | sularaha       |
| 19380 | 8476    | INV-202410-00370 | 2024-10-27 00:00:00+00 | 4454        | 1199       | 4        | 276.97     | 1107.88     | pood    | Tallinn        | sularaha       |
| 19869 | 8965    | INV-202412-00073 | 2024-12-05 00:00:00+00 | 4717        | 1033       | 5        | 221.42     | 1107.10     | pood    | Tallinn        | kaart          |
| 14009 | 3105    | INV-202309-00256 | 2023-09-07 00:00:00+00 | 4584        | 1241       | 3        | 368.97     | 1106.91     | pood    | Tallinn        | järelmaks      |
| 18994 | 8090    | INV-202409-00377 | 2024-09-11 00:00:00+00 | 2442        | 1241       | 3        | 402.76     | 1106.91     | pood    | Tallinn        | kaart          |
| 13215 | 2311    | INV-202307-00314 | 2023-07-03 00:00:00+00 | null        | 1160       | 3        | 368.67     | 1106.01     | pood    | Tallinn        | sularaha       |
| 14702 | 3798    | INV-202311-00293 | 2023-11-03 00:00:00+00 | 4552        | 1264       | 5        | 221.19     | 1105.95     | pood    | Tallinn        | järelmaks      |
| 15077 | 4173    | INV-202312-00340 | 2023-12-26 00:00:00+00 | 4412        | 1212       | 4        | 276.20     | 1104.80     | pood    | Tallinn        | sularaha       |
| 14444 | 3540    | INV-202311-00035 | 2023-11-03 00:00:00+00 | 4076        | 1291       | 5        | 219.83     | 1099.15     | pood    | Tallinn        | kaart          |
| 14784 | 3880    | INV-202312-00047 | 2023-12-13 00:00:00+00 | 2192        | 1337       | 4        | 272.05     | 1088.20     | pood    | Tallinn        | sularaha       |
| 18220 | 7316    | INV-202408-00114 | 2024-08-12 00:00:00+00 | 3545        | 1265       | 4        | 269.85     | 1079.40     | pood    | Tallinn        | kaart          |
| 17714 | 6810    | INV-202407-00119 | 2024-07-28 00:00:00+00 | null        | 1046       | 3        | 358.41     | 1075.23     | pood    | Tallinn        | sularaha       |
| 20050 | 9146    | INV-202412-00254 | 2024-12-02 00:00:00+00 | 3857        | 1171       | 3        | 351.62     | 1054.86     | pood    | Tallinn        | kaart          |
| 19711 | 8807    | INV-202411-00308 | 2024-11-19 00:00:00+00 | 4206        | 1293       | 3        | 351.33     | 1053.99     | pood    | Tallinn        | kaart          |
| 25655 | 8807    | INV-202411-00308 | 2024-11-19 00:00:00+00 | 4206        | 1293       | 3        | 351.33     | 1053.99     | pood    | Tallinn        | kaart          |
| 12971 | 2067    | INV-202307-00070 | 2023-07-19 00:00:00+00 | 2117        | 1221       | 3        | 350.19     | 1050.57     | pood    | Tallinn        | kaart          |

Tulemus: Väljastab kõik Tallinna kaupluse tehingud, mille summa ületab 100€, sorteertud suuremast väiksemani. 
Äriline väärtus: Võimaldab tuvastada esinduskaupluse suurima ostukorviga tehinguid, mida turundus ja kaupluse juhataja saavad kasutada ostumustrite ja VIP-klientide analüüsiks.

