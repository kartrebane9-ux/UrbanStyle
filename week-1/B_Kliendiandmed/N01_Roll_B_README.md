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
- **Tulemus 2:** On olemas kaks veergu puuduva ehk NULL väärtustega. Need on klienditase (veerg loyalty_tier) (põhjustatud pigem ostukäitumisega) ja e-mailid (veerg email). Duplikaadid on ka veerus telefoninumbritega (veerg phone).
  -  **Tulemus 2.1:** email veerus on 2640 unikaalset e-maili (84%), 380 klienti ilma e-mailita (12%) ja 130 (4%) e-maili duplikaati. Veerus phone on 3000 unikaalset telefoninumbrit (95%) ja 150 duplikaati (5%).
- **Tulemus 3:** Kliendid määrasid 54 erinevat linnade varianti, kuid tegelikult oli linnu 12.
  - **Tulemus 3.1:** Kõige rohkem kliente on Tallinnas (1238 ja 39,3% klientide arvust), kuid kõige kõrgem klienditasemega klientide osakaal on Võrus (67,9% klientidest on klienditasemega) ja kõige kõrgem golden klientide osakaal on Narvas (21,5%) ja Viljandis (21,4%).

##  Peamised järeldused ja soovitused
- **Soovitus 1:** Customers tabelis on 42 linnade valikut, mis erinevad õigest. Soovitus on määrata e-poes peamiste linnade standartvalikut, et andmed oleks ühtlased.
- **Soovitus 2:** 380 kliendile ei saa turundusmaterjale saata ning 130 ja 150 klienti saavad potentsiaalselt materjali topelt vastavalt e-mailide ja sõnumite teel, mis võib põhjustada rahulolematust ja reklaamimaterjaalidest loobumist. Tuleb eemaldada e-mailide ja telefonide duplikaate turunduslistist ning stimuleerida e-mailide ja telefonide küsimist e-poes ja kassas ostu sooritamisel.

##  Projekti struktuur ja käivitamine
- `N01_Roll_B_Grupitöö.sql` – SQL päringud andmete analüüsiks
- `N01_Roll_B_Results.md` – Päringu tulemuste väljavõte

##  AI kasutamise reflektsioon
Kasutasin AI-d (ChatGPT) concat ja round funktsioonide õppimiseks, et anda korrektset ülevadet linnade kohta
