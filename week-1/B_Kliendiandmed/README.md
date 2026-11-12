# Grupp 5 Product analytics
# Nädal 1: SQL Põhitõed

## Projekti eesmärk
IT Direktor Toomas Kask ei usalda klientide andmebaasis ehk customers tabelis olevaid andmeid. Töö eesmärk on anda temale ülevaadet millised kliendid on klientide andmebaasis olemas ning mis info on nende kohta olemas.

##  Kasutatud tööriistad ja meetodid
- **Andmebaas / Keel:** PostgreSQL (Supabase),
- **Tööriistad:** GitHub

##  Peamised tulemused
- **Tulemus 1:** Customers tabelis on 3150 rida ja 9 veergu. Esimene kanne oli tehtud 02.01.2020 ja viimane - 27.02.2025.
  - **Tulemus 1.1:** Kliendibaas kasvab iga aastaga (vahemikkus 2020-2024, 2025 täisaastat veel ei ole).
- **Tulemus 2:** On olemas kaks veergu puuduva ehk NULL väärtustega. Need on klienditase (põhjustatud pigem ostukäitumisega) ja e-mailid. Duplikaadid on ka veerus telefoninumbritega.
  -  **Tulemus 2.1:** Customer tabelis on 2640 unikaalset e-maili (83%), 380 klienti ilma e-mailita (12%) ja 130 (4%) e-maili duplikaati. Seal on ka 3000 unikaalset 
- **Tulemus 3:** Kliendid määrasid 54 erinevat linnade varianti, kuid tegelikult oli linnu 12.
  - **Tulemus 3.1:** Kõige rohkem kliente on Tallinnas (1238 ja 39,3% klientide arvust), kuid kõige kõrgem klienditasemega klientide osakaal on Võrus (67,9% klientidest on klienditasemega)

##  Peamised järeldused ja soovitused
- **Soovitus 1:** Customers tabelis on 42 linnade valikut, mis erinevad õigest. Soovitus on määrata e-poes linnade standartvalikut, et andmed oleks ühtlased.
- **Soovitus 2:** 380 kliendile ei saa turundusmaterjale saata ja 130 klienti potentsiaalselt saavad materjali topelt, mis võib põhjustada rahulolematust ja reklaamimaterjaalidest loobumist. Tuleb eemaldada e-mailide duplikaate meililistist ning stimuleerida e-mailide küsimist e-poes ja kassas ostu sooritamisel.

##  Projekti struktuur ja käivitamine
- `N01 Grupitöö Roll B.sql` – SQL päringud andmete analüüsiks
- `Results.md` – Päringu tulemuste väljavõte

##  AI kasutamise reflektsioon
Kasutasin AI-d (ChatGPT) concat ja round funktsioonide õppimiseks, et anda korrektset ülevadet linnade kohta
