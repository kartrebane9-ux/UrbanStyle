

-- Kontrollin, kas loodud test tabelis ja algses tabelis on sama arv ridu.

customers:
| count |
| ----- |
| 3150  |

customer_test
| count |
| ----- |
| 3150  |

-- Leida duplikaatsete emailid arv (customer_test tabelis)

Duplikaatsete emailide arv - 128, kokku duplikaatseid ridu 130(?) -- vaata see veel üle!!!

-- Leia puuduvad nimed kogus (eraldi esinimed ja perekonnanimed)

| null_eesnimi | null_perenimi |
| ------------ | ------------- |
| 0            | 0             |

-- Kontrollida linnade kirjapilte

Linnade erinevad kirjapildid
Haapsalu 	4
Jõhvi	4
Kuressaare 	5
Narva 	4
Pärnu	5
Paide	5
Rakvere	5
Tallinn	5
Tartu	5
Võru	5
Viljandi	5
Valga	2

-- Klientide jagunemine linnade vahel

| city       | arv  |
| ---------- | ---- |
| Haapsalu   | 90   |
| Jõhvi      | 83   |
| Kuressaare | 98   |
| Narva      | 177  |
| Paide      | 66   |
| Pärnu      | 346  |
| Rakvere    | 107  |
| Tallinn    | 1238 |
| Tartu      | 658  |
| Valga      | 94   |
| Viljandi   | 112  |
| Võru       | 81   |

--Kontrollida kontaktandmed - puuduvad telefoninumbrid ja emailid

| null_telefon | null_email |
| ------------ | ---------- |
| 0            | 380        |


-- SIIT TEEN customers TABELI KÄSUD JA PÄRINGUD
-- Vaatan kontrolliks algtabelit

-- Kontrollin, kas loodud test tabelis ja algses tabelis on sama arv ridu.

Ridade 3150 arv

-- Kontrollin, kas loodud test tabelis ja algses tabelis on sama arv ridu.

customers:
| count |
| ----- |
| 3150  |

customer_test
| count |
| ----- |
| 3150  |

-- Leida duplikaatsete emailid arv (customer_test tabelis)

Duplikaatsete emailide arv - 128, kokku duplikaatseid ridu 130(?) -- vaata see veel üle!!!

-- Leia puuduvad nimed kogus (eraldi esinimed ja perekonnanimed)

| null_eesnimi | null_perenimi |
| ------------ | ------------- |
| 0            | 0             |

-- Kontrollida linnade kirjapilte

Linnade erinevad kirjapildid
Haapsalu 	4
Jõhvi	4
Kuressaare 	5
Narva 	4
Pärnu	5
Paide	5
Rakvere	5
Tallinn	5
Tartu	5
Võru	5
Viljandi	5
Valga	2
**KOKKU 54 erinvat krijapilti**


-- Klientide jagunemine linnade vahel

| city       | arv  |
| ---------- | ---- |
| Haapsalu   | 90   |
| Jõhvi      | 83   |
| Kuressaare | 98   |
| Narva      | 177  |
| Paide      | 66   |
| Pärnu      | 346  |
| Rakvere    | 107  |
| Tallinn    | 1238 |
| Tartu      | 658  |
| Valga      | 94   |
| Viljandi   | 112  |
| Võru       | 81   |
**KOKKU 54 erinevat kirjapilti **

--Kontrollida kontaktandmed - puuduvad telefoninumbrid ja emailid

| null_telefon | null_email |
| ------------ | ---------- |
| 0            | 380        |


-- Vaatan puuduvate emailidega kliente

| email | puuduvate_emailidega_kliendid |
| ----- | ----------------------------- |
| null  | 380                           |

-- Analüüsin lojaalsus programmi

| loyalty_tier | lojaalsus_tasemete_klientide_arv |
| ------------ | -------------------------------- |
| bronze       | 686                              |
| gold         | 535                              |
| silver       | 669                              |
| null         | 1260                             |
