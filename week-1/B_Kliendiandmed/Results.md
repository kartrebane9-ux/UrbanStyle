# Results

## Tabeli struktuur
*Tabelis on 9 veergu*
| customer_id | first_name | last_name | email  | phone | city | registration_date | loyalty_tier | birth_year |
| :---------: | :--------: | :-------: | :----: | :---: | :--: | :---------------: | :----------: | :--------: |

*ja 3150 rida*
| Klientide arv |
| :-----------: |
| 3150          |

## Puuduolevad andmed
*Andmed puuduvad ainult e-mailide ja klienditaseme veergudes. Teine on loogiline, sest kliendid ei pruugi täita klienditaseme nõudeid, kuid aga e-mailide puudujääk võib ja peab kõrvaldama*
| Kilendi number puudu | Eesnimi puudu | Perekonnanimi puudu | E-mail puudu | Telefon puudu | Linn puudu | Registreerimiskuupäev puudu | Klienditase puudu | Sünniaasta puudu |
| :------------------: | :-----------: | :-----------------: | :----------: | :-----------: | :--------: | :-------------------------: | :---------------: | :--------------: |
| 0                    | 0             | 0                   | 380          | 0             | 0          | 0                           | 1260              | 0                |

*Customer tabelis on 2640 unikaalset e-maili, 380 klienti ilma e-mailita ja 130 duplikaati
| Kliendid kokku | Kliendid e-mailiga | Unikaalsed e-mailid | Kliendid e-mailita | Duplikaadid | Duplikaadid ja ilma e-mailita |
| :------------: | :----------------: | :-----------------: | :----------------: | :---------: | :---------------------------: |
| 3150           | 2770 / 88%         | 2640 / 84%          | 380 / 12%          | 130 / 4%    | 510 / 16%                     |

*Customer tabelis on 3000 unikaalset telefoni numbrit ja 150 duplikaati. Kliente ilma numbrita ei ole.
| Kliendid kokku | Kliendid numbriga | Unikaalsed numbrid | Kliendid numbrita | Duplikaadid | Duplikaadid ja ilma numbrita |
| :------------: | :---------------: | :----------------: | :---------------: | :---------: | :--------------------------: |
| 3150           | 3150 / 100%       | 3000 / 95%         | 0 / 0%            | 150 / 5%    | 150 / 5%                     |

## Kliendibaas
*Esimene kanne oli tehtud 02.01.2020 ja viimane - 27.02.2025*
| Vanim klient | Uusim klient |
| :----------: | :----------: |
| 2020-01-02   | 2025-02-27   |

*Klientide arv aastate lõikes on kasvanud vaikselt aga pidevalt*
| Aasta | Kliendid |
| :---: | :------: |
| 2020  | 574      |
| 2021  | 598      |
| 2022  | 618      |
| 2023  | 622      |
| 2024  | 630      |
| 2025  | 108      |

## Linnade analüüs
*Tabelis on 54 linnade varianti, mis vastab 12 linnale*
|  Esialgseid linnu | Korrigeritud linnu |
| :---------------: | :----------------: |
| 54                | 12                 |

*Kõige rohkem kliente on Tallinnas (1238 ja 39,3%)*
| Linnad     | Klientide arv | % klientide koguarvust |
| :--------: | :-----------: | :--------------------: |
| Tallinn    | 1238          | 39.3%                  |
| Tartu      | 658           | 20.9%                  |
| Pärnu      | 346           | 11.0%                  |
| Narva      | 177           | 5.6%                   |
| Viljandi   | 112           | 3.6%                   |
| Rakvere    | 107           | 3.4%                   |
| Kuressaare | 98            | 3.1%                   |
| Valga      | 94            | 3.0%                   |
| Haapsalu   | 90            | 2.9%                   |
| Jõhvi      | 83            | 2.6%                   |
| Võru       | 81            | 2.6%                   |
| Paide      | 66            | 2.1%                   |

*Tallinnas on ka kõige rohkem iga klienditasemega kliente. Lojaalsemad kliendid on aga Võrus (67,9% linna klientidest on klienditasemega), Tallinn aga on lõpu lähedal (56,5% ja 10. linn 12-st; halveim tulemus in Haapsalus - 55,6%). Samas Kõige kõrgem gold klientide osakaal on Narvas (21,5%) ja Viljandis (21,4%), rohkem ei ole linnu 20+% tasemega.*
| Linnad     | Klientide arv (% klientide koguarvust) | Klienditasemega kliendid kokku (% linna klientidest) | Gold        | Silver      | Bronze      |
| :--------: | :------------------------------------: | :--------------------------------------------------: | :---------: | :---------: | :---------: |
| Tallinn    | 1238 / 39.3%                           | 699 / 56.5%                                          | 207 / 16.7% | 224 / 18.1% | 268 / 21.6% |
| Tartu      | 658 / 20.9%                            | 409 / 62.2%                                          | 125 / 19.0% | 149 / 22.6% | 135 / 20.5% |
| Pärnu      | 346 / 11.0%                            | 216 / 62.4%                                          | 43 / 12.4%  | 87 / 25.1%  | 86 / 24.9%  |
| Narva      | 177 / 5.6%                             | 110 / 62.1%                                          | 38 / 21.5%  | 33 / 18.6%  | 39 / 22.0%  |
| Viljandi   | 112 / 3.6%                             | 74 / 66.1%                                           | 24 / 21.4%  | 35 / 31.3%  | 15 / 13.4%  |
| Rakvere    | 107 / 3.4%                             | 70 / 65.4%                                           | 19 / 17.8%  | 22 / 20.6%  | 29 / 27.1%  |
| Kuressaare | 98 / 3.1%                              | 55 / 56.1%                                           | 18 / 18.4%  | 22 / 22.4%  | 15 / 15.3%  |
| Valga      | 94 / 3.0%                              | 59 / 62.8%                                           | 11 / 11.7%  | 18 / 19.1%  | 30 / 31.9%  |
| Haapsalu   | 90 / 2.9%                              | 50 / 55.6%                                           | 13 / 14.4%  | 20 / 22.2%  | 17 / 18.9%  |
| Jõhvi      | 83 / 2.6%                              | 55 / 66.3%                                           | 14 / 16.9%  | 24 / 28.9%  | 17 / 20.5%  |
| Võru       | 81 / 2.6%                              | 55 / 67.9%                                           | 12 / 14.8%  | 20 / 24.7%  | 23 / 28.4%  |
| Paide      | 66 / 2.1%                              | 38 / 57.6%                                           | 11 / 16.7%  | 15 / 22.7%  | 12 / 18.2%  |
