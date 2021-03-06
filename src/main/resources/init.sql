/*
    Database initialization script that runs on every web-application redeployment.
*/
DROP TABLE IF EXISTS poems;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id       SERIAL PRIMARY KEY,
    name     TEXT        NOT NULL,
    email    TEXT UNIQUE NOT NULL,
    password TEXT        NOT NULL,
    CONSTRAINT email_not_empty CHECK (email <> ''),
    CONSTRAINT password_not_empty CHECK (password <> '')
);

CREATE TABLE poems
(
    id      SERIAL PRIMARY KEY,
    user_id INT  NOT NULL,
    title   TEXT NOT NULL,
    poem    TEXT NOT NULL,
    CONSTRAINT title_not_empty CHECK (title <> ''),
    CONSTRAINT poem_not_empty CHECK (poem <> ''),
    FOREIGN KEY (user_id) REFERENCES users (id)

);


INSERT INTO users (name, email, password)
VALUES ('József Attila', 'user1@user1', 'user1'), -- 1
       ('Szabó Lőrinc', 'user2@user2', 'user2'), -- 2
       ('Petőfi Sándor','user3@user3', 'user3'); -- 3

INSERT INTO poems (id, user_id, title, poem)
VALUES (1, 1, 'Nagyon fáj', 'kivül-belől
                leselkedő halál elől
                (mint lukba megriadt egérke)

                amíg hevülsz,
                az asszonyhoz ugy menekülsz,
                hogy óvjon karja, öle, térde.

                nemcsak a lágy,
                meleg öl csal, nemcsak a vágy,
                de odataszit a muszáj is -

                ezért ölel
                minden, ami asszonyra lel,
                mig el nem fehérül a száj is.

                kettős teher
                s kettős kincs, hogy szeretni kell.
                ki szeret s párra nem találhat,

                oly hontalan,
                mint amilyen gyámoltalan
                a szükségét végző vadállat.

                nincsen egyéb
                menedékünk; a kés hegyét
                bár anyádnak szegezd, te bátor!

                és lásd, akadt
                nő, ki érti e szavakat,
                de mégis ellökött magától.

                nincsen helyem
                így, élők közt. zúg a fejem,
                gondom s fájdalmam kicifrázva;

                mint a gyerek
                kezében a csörgő csereg,
                ha magára hagyottan rázza.

                mit kellene
                tenni érte és ellene?
                nem szégyenlem, ha kitalálom,

                hisz kitaszit
                a világ így is olyat, akit
                kábít a nap, rettent az álom.

                a kultura
                ugy hull le rólam, mint ruha
                másról a boldog szerelemben -

                de az hol áll,
                hogy nézze, mint dobál halál
                s még egyedül kelljen szenvednem?

                a csecsemő
                is szenvedi, ha szül a nő.
                páros kínt enyhíthet alázat.

                de énnekem
                pénzt hoz fájdalmas énekem
                s hozzám szegődik a gyalázat.

                segítsetek!
                ti kisfiuk, a szemetek
                pattanjon meg ott, ő ahol jár.

                ártatlanok,
                csizmák alatt sikongjatok
                és mondjátok neki: nagyon fáj.

                ti hű ebek,
                kerék alá kerüljetek
                s ugassátok neki: nagyon fáj.

                nők, terhetek
                viselők, elvetéljetek
                és sirjátok neki: nagyon fáj.

                ép emberek,
                bukjatok, összetörjetek
                s motyogjátok neki: nagyon fáj.

                ti férfiak,
                egymást megtépve nő miatt,
                ne hallgassátok el: nagyon fáj.

                lovak, bikák,
                kiket, hogy húzzatok igát,
                herélnek, rijjátok: nagyon fáj.

                néma halak,
                horgot kapjatok jég alatt
                és tátogjatok rá: nagyon fáj.

                elevenek,
                minden, mi kíntól megremeg,
                égjen, hol laktok, kert, vadon táj -

                s ágya körül,
                üszkösen, ha elszenderül,
                vakogjatok velem: nagyon fáj.

                hallja, mig él.
                azt tagadta meg, amit ér.
                elvonta puszta kénye végett

                kivül-belől
                menekülő élő elől
                a legutolsó menedéket.'),
       (2, 2, 'Különbéke', 'Ha tudtam volna régen, amit
                ma már tudok,
                ha tudtam volna, hogy az élet
                milyen mocsok,

                nem fütyörésznék most az uccán
                ilyen vigan:
                valószínűleg felkötöttem
                volna magam.

                Régen, mint az álamok tékozló
                más fiai,
                azt hittem, lehet a világon
                segíteni,

                azt hittem, szép szó vagy erőszak
                ér valamit
                s az élet, ha sokan akarjuk,
                megváltozik.

                Minden szörnyübb, mint hittem akkor,
                fiatalon,
                de, hálistennek, egyre csökken
                az undorom,

                egyre jobban bírom az évek
                förtelmeit,
                és az idő és a közöny már
                fertőtlenít.

                Mert fátylát sorra dobta minden,
                egymásután,
                s harminchárom évem ma átlát
                minden szitán:

                látom, sokkal több a mocsok, mint
                az ifjukor
                sejteni bírta volna bennem
                valamikor,

                látom milyen rútúl becsapják
                a baleket,
                s hogy a balek azért balek, mert
                mást nem tehet,

                s hogy az ész az érdek rimája,
                és hogy magát
                sugaras hőssé a bitang is
                hogy költi át,

                s ha van is, kézen-közön elvész
                az ideál,
                és hogy nem hozhat egyetértést,
                csak a halál, -

                s mert mindez mégcsak nemis aljas,
                nem szomorú,
                a minden dolog apja valóban
                a háború:

                úgy nézzem elszát nyugalommal,
                az életet,
                mint reménytelen lepratábort
                vagy harcteret.

                Ha egyszerre tudok meg mindent,
                hogy itt mi van,
                egész biztossan felkötöttem
                volna magam.

                De valamit a sors, úgy látszik,
                akart velem:
                megmutatott mindent, de lassan,
                türelmessen:

                különbékét ezért kötöttem
                a semmivel,
                ezért van, hogy csinálom, amit
                csinálni kell,

                ezért becsülök úgy egy-egy jó
                pillanatot,
                ezért van, hogy a háborúban
                verset irok

                s a leprások közt fütyörészek
                és nevetek
                s egyre jobban kezdem szeretni
                a gyerekeket.'),
       (3, 3, 'Szeptember végén', 'Még nyílnak a völgyben a kerti virágok,
                Még zöldel a nyárfa az ablak előtt,
                De látod amottan a téli világot?
                Már hó takará el a bérci tetőt.
                Még ifju szivemben a lángsugarú nyár
                S még benne virít az egész kikelet,
                De íme sötét hajam őszbe vegyűl már,
                A tél dere már megüté fejemet.

                Elhull a virág, eliramlik az élet...
                Űlj, hitvesem, űlj az ölembe ide!
                Ki most fejedet kebelemre tevéd le,
                Holnap nem omolsz-e sirom fölibe?
                Oh mondd: ha előbb halok el, tetemimre
                Könnyezve borítasz-e szemfödelet?
                S rábírhat-e majdan egy ifju szerelme,
                Hogy elhagyod érte az én nevemet?

                Ha eldobod egykor az özvegyi fátyolt,
                Fejfámra sötét lobogóul akaszd,
                Én feljövök érte a síri világból
                Az éj közepén, s oda leviszem azt,
                Letörleni véle könyűimet érted,
                Ki könnyeden elfeledéd hivedet,
                S e szív sebeit bekötözni, ki téged
                Még akkor is, ott is, örökre szeret!'),
       (4, 3, 'Isten csodája', 'Ameddig a történet csillaga
                Röpíti a multakba sugarát:
                A szem saját kezünkben mindenütt
                Saját szivünkre célzó gyilkot lát,
                S ez öngyilkos kéz hányszor szálla ránk!...
                Isten csodája, hogy még áll hazánk.

                Igy hordozunk sok százados sebet,
                Keblünk soha be nem gyógyúlhatott;
                Mérget kellett mindenkor innia,
                Ki sebeinkre önte balzsamot.
                Valami rosz szellemtől származánk!
                Isten csodája, hogy még áll hazánk.

                S míg egymást martuk szennyes koncokért,
                Mint a szeméten a silány ebek,
                Azt vettük észre csak, hogy ezalatt
                Az oroszlánok itt termettenek;
                Jött a tatár, jött a török reánk.
                Isten csodája, hogy még áll hazánk.

                Ott foly Sajó... oly görbén kanyarog,
                Mint ember, aki görcsben haldokol;
                Ott haldokoltunk, vérünk ott szivá
                Az óriási nadály, a mogol,
                S holttesteinket fölfalá a láng!
                Isten csodája, hogy még áll hazánk.

                S ott van Mohács... ott nyomta a királyt
                Sárkoporsóba páncéla s lova,
                S készűlt számunkra a ledőlt király
                Kardjából a rettentő zabola,
                Melytől még most is ég és vérzik szánk!...
                isten csodája, hogy még áll hazánk.

                Mi lesz belőlünk?... ezt én kérdezem,
                De mily kevesen gondolnak vele.
                Oh nemzetem, magyar nép! éltedet
                Mindig csak a jó sorsra bízod-e?
                Ne csak istenben bízzunk, mint bizánk;
                Emberségünkből álljon fönn hazánk!');
