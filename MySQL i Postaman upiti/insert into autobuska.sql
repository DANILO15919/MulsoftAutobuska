USE AutobuskaStanicaIT322020;

INSERT INTO Autobus (Prevoznik, TipAutobusa, BrojSedista)
VALUES ('Prevoz d.o.o.', 'Gradski', 50);

INSERT INTO Autobus (Prevoznik, TipAutobusa, BrojSedista)
VALUES ('Turistika agencija', 'Turistički', 30);

INSERT INTO Garaza (Lokacija, BrojGaraze)
VALUES ('Beograd', 'G1');

INSERT INTO Garaza (Lokacija, BrojGaraze)
VALUES ('Novi Sad', 'NS3');

INSERT INTO Autobus_Garaza (AutobusID, GarazaID)
VALUES (1, 1);

INSERT INTO Autobus_Garaza (AutobusID, GarazaID)
VALUES (2, 2);

INSERT INTO Vozac (JMBG, Ime, Prezime, Adresa, Grad, Kontakt)
VALUES ('0101985001234', 'Marko', 'Marković', 'Bulevar Kralja Petra 8', 'Beograd', '0651234567');

INSERT INTO Vozac (JMBG, Ime, Prezime, Adresa, Grad, Kontakt)
VALUES ('0403907009876', 'Ana', 'Anić', 'Trg Slobode 3', 'Novi Sad', '0649876543');

INSERT INTO Vozac_Autobus (VozacID, AutobusID)
VALUES (1, 1);

INSERT INTO Vozac_Autobus (VozacID, AutobusID)
VALUES (2, 2);

INSERT INTO Zaposleni (JMBG, Ime, Prezime, Adresa, Grad, BrojSaltera, Kontakt)
VALUES ('0112965009123', 'Ivan', 'Ivanović', 'Knez Mihailova 10', 'Beograd', 'S1', '0654567890');

INSERT INTO Zaposleni (JMBG, Ime, Prezime, Adresa, Grad, BrojSaltera, Kontakt)
VALUES ('0213956009876', 'Jelena', 'Janković', 'Zmaj Jovina 5', 'Novi Sad', 'NS2', '0641234567');

INSERT INTO Korisnik (JMBG, Ime, Prezime, Adresa, Grad)
VALUES ('0805942007123', 'Milica', 'Milić', 'Vojvode Stepe 20', 'Beograd');

INSERT INTO Korisnik (JMBG, Ime, Prezime, Adresa, Grad)
VALUES ('1101941007890', 'Stefan', 'Stefanović', 'Bulevar Oslobođenja 15', 'Novi Sad');

INSERT INTO Ruta (MestoDolaska, MestoOdlaska, BrojPosecenihStanica)
VALUES ('Kopaonik', 'Beograd', 3);

INSERT INTO Ruta (MestoDolaska, MestoOdlaska, BrojPosecenihStanica)
VALUES ('Zlatibor', 'Novi Sad', 2);

INSERT INTO TipKarte (NazivKarte)
VALUES ('Jednosmerna');

INSERT INTO TipKarte (NazivKarte)
VALUES ('Povratna');

INSERT INTO Karta (BrojPerona, BrojSedista, DatumPolaska, DatumDolaska, KorisnikID, TipKarteID, RutaID, AutobusID)
VALUES ('P1', 'A5', '2023-04-15', '2023-04-16', 1, 1, 1, 1);

INSERT INTO Karta (BrojPerona, BrojSedista, DatumPolaska, DatumDolaska, KorisnikID, TipKarteID, RutaID, AutobusID)
VALUES ('P2', 'B8', '2023-05-10', '2023-05-12', 2, 2, 2, 2);

INSERT INTO Zaposleni_Karta (ZaposleniID, KartaID)
VALUES (1, 1);

INSERT INTO Zaposleni_Karta (ZaposleniID, KartaID)
VALUES (2, 2);
