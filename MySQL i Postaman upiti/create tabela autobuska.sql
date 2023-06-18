USE AutobuskaStanicaIT322020;

DROP TABLE IF EXISTS Zaposleni_Karta;
DROP TABLE IF EXISTS Autobus_Garaza;
DROP TABLE IF EXISTS Vozac_Autobus;
DROP TABLE IF EXISTS Karta;
DROP TABLE IF EXISTS Autobus;
DROP TABLE IF EXISTS Garaza;
DROP TABLE IF EXISTS Vozac;
DROP TABLE IF EXISTS Zaposleni;
DROP TABLE IF EXISTS Korisnik;
DROP TABLE IF EXISTS Ruta;
DROP TABLE IF EXISTS TipKarte;

-- Table Definitions --
CREATE TABLE Autobus (
  AutobusID INT auto_increment,
  Prevoznik VARCHAR(30) NOT NULL,
  TipAutobusa VARCHAR(20) NOT NULL,
  BrojSedista INT NOT NULL,
  PRIMARY KEY (AutobusID)
);

CREATE TABLE Garaza (
  GarazaID INT auto_increment,
  Lokacija VARCHAR(50) NOT NULL,
  BrojGaraze VARCHAR(20),
  PRIMARY KEY (GarazaID)
);

CREATE TABLE Autobus_Garaza (
  AutobusID INT,
  GarazaID INT,
  PRIMARY KEY (AutobusID, GarazaID),
  FOREIGN KEY (AutobusID) REFERENCES Autobus (AutobusID) on delete cascade,
  FOREIGN KEY (GarazaID) REFERENCES Garaza (GarazaID) on delete cascade
);

CREATE TABLE Vozac (
  VozacID INT auto_increment,
  JMBG VARCHAR(13) NOT NULL,
  Ime VARCHAR(20) NOT NULL,
  Prezime VARCHAR(20) NOT NULL,
  Adresa VARCHAR(50),
  Grad VARCHAR(30),
  Kontakt VARCHAR(14) NOT NULL,
  PRIMARY KEY (VozacID)
);

CREATE TABLE Vozac_Autobus (
  VozacID INT auto_increment,
  AutobusID INT,
  PRIMARY KEY (VozacID, AutobusID),
  FOREIGN KEY (AutobusID) REFERENCES Autobus (AutobusID) on delete cascade,
  FOREIGN KEY (VozacID) REFERENCES Vozac (VozacID) on delete cascade
);

CREATE TABLE Zaposleni (
  ZaposleniID INT auto_increment,
  JMBG VARCHAR(13) NOT NULL,
  Ime VARCHAR(20) NOT NULL,
  Prezime VARCHAR(20) NOT NULL,
  Adresa VARCHAR(50),
  Grad VARCHAR(30),
  BrojSaltera VARCHAR(15),
  Kontakt VARCHAR(14) NOT NULL,
  PRIMARY KEY (ZaposleniID)
);

CREATE TABLE Korisnik (
  KorisnikID INT auto_increment,
  JMBG VARCHAR(13) NOT NULL,
  Ime VARCHAR(20) NOT NULL,
  Prezime VARCHAR(20) NOT NULL,
  Adresa VARCHAR(50),
  Grad VARCHAR(30),
  PRIMARY KEY (KorisnikID)
);

CREATE TABLE Ruta (
  RutaID INT auto_increment,
  MestoDolaska VARCHAR(50) NOT NULL,
  MestoOdlaska VARCHAR(50) NOT NULL,
  BrojPosecenihStanica INT NOT NULL,
  PRIMARY KEY (RutaID)
);

CREATE TABLE TipKarte (
  TipKarteID INT auto_increment,
  NazivKarte VARCHAR(20) NOT NULL,
  PRIMARY KEY (TipKarteID)
);

CREATE TABLE Karta (
  KartaID INT auto_increment,
  BrojPerona VARCHAR(10) NOT NULL,
  BrojSedista VARCHAR(15) NOT NULL,
  DatumPolaska DATE NOT NULL,
  DatumDolaska DATE NOT NULL,
  KorisnikID INT,
  TipKarteID INT,
  RutaID INT,
  AutobusID INT,
  PRIMARY KEY (KartaID),
  FOREIGN KEY (KorisnikID) REFERENCES Korisnik (KorisnikID) on delete cascade,
  FOREIGN KEY (TipKarteID) REFERENCES TipKarte (TipKarteID) on delete cascade,
  FOREIGN KEY (RutaID) REFERENCES Ruta (RutaID) on delete cascade,
  FOREIGN KEY (AutobusID) REFERENCES Autobus (AutobusID) on delete cascade
);

CREATE TABLE Zaposleni_Karta (
  ZaposleniID INT,
  KartaID INT,
  PRIMARY KEY (ZaposleniID, KartaID),
  FOREIGN KEY (ZaposleniID) REFERENCES Zaposleni (ZaposleniID) on delete cascade,
  FOREIGN KEY (KartaID) REFERENCES Karta (KartaID) on delete cascade
);