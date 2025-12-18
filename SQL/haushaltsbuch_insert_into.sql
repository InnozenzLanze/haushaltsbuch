INSERT INTO haushaltsbuch.kategorie(
	bezeichnung
	)
VALUES
	('Kleidung'),
	('Lebensmittel'),
	('Genussmittel'),
	('Heimwerkerbedarf'),
	('Gartenbedarf'),
	('Fahrzeug/-bedarf'),
	('Bürobedarf'),
	('Haustier/-bedarf'),
	('Gesundheit'),
	('Entertainment/Reisen')
;

INSERT INTO haushaltsbuch.artikel(
	bezeichnung, IDKategorie
	)
VALUES
	('Pullover', 1),
	('Süßigkeiten', 3),
	('Zoo-Besuch', 10),
	('TÜV-Prüfung', 6),
	('Ersatzteil/e', 6),
	('Druckerpapier', 7),
	('Gewächse/Pflanze', 5),
	('Futtermittel', 8),
	('Auslandsreise', 10),
	('Kino-Besuch', 10),
	('Werkzeug', 4),
	('Arzneimittelzuzahlung', 9),
	('Gemüse', 2),
	('Obst', 2),
	('Getränke (ohne Alkohol)', 2),
	('diverse Kochzutat', 2),
	('Schuhe', 1)
;

INSERT INTO haushaltsbuch.benutzer(
	nachname, vorname, geburtsdatum, budget
	)
VALUES
	('Tisch', 'Praxius', '2001-08-12', 250.50),
	('Stuhl', 'Beatus', '1987-05-04', 130.00),
	('Tasse', 'Anneliese-Marie', '1968-12-15', 2500.45),
	('Bonbon', 'Henrik-Theodor', '1999-07-17', 160.75),
	('Buchmacher', 'Charlie Maria', '2002-04-22', 50.40),
	('Schreiber', 'Devona', '1995-03-30', 150.40)
;

INSERT INTO haushaltsbuch.ort(
	PLZ, ortname
	)
VALUES
	(29451, 'Dannenberg'),
	(29481, 'Karwitz'),
	(50935, 'Köln-Sülz'),
	(22339, 'Hamburg-Hummelsbüttel'),
	(33609, 'Bielefeld-Baumheide'),
	(53229, 'Bonn-Pütchen/Bechlinghoven'),
	(13597, 'Berlin-Spandau')
;

INSERT INTO haushaltsbuch.laden(
	strasse, hausNr, PLZ
	)
VALUES
	('Lange Straße', 253, 29451),
	('Am Rathaus', 450, 50935),
	('Vielleicht an der Spree', 245, 13597),
	('Am Wald', '74a', 33609),
	('Ums Eck', '85-90', 53229),
	('Breite Straße', '50f', 13597),
	('Im alten Dorf', 63, 29481),
	('Am Markt', 54, 22339)
;

INSERT INTO haushaltsbuch.haendler(
	haendlername, IDLaden
	)
VALUES
	('D&B Bekleidung', 1),
	('ODOKI-Lebensmittel und mehr', 7),
	('Hauen&Pappe', 8),
	('HUI-Reisebüro', 5),
	('Schuhe und So', 2),
	('Grüner Daumen', 3)
;

INSERT INTO haushaltsbuch.einkauf(
	belegNr, datum, IDBenutzer, IDHaendler
	)
VALUES
	(1002, '2025-06-03', 4, 1),
	(450, '2025-04-21', 1, 2),
	(64050, '2025-01-08', 3, 3),
	(120, '2025-08-02', 5, 6)
;
	
INSERT INTO haushaltsbuch.positionnr(
	anzahl, preis, luxus, IDArtikel, IDEinkauf
	)
VALUES
	(2, 24.99, 0, 1, 1),
	(4, 0.79, 0, 15, 2),
	(3, 2.99, 0, 14, 2),
	(3, 1.69, 0, 13, 2),
	(1, 2.99, 1, 2, 2),
	(1, 4.99, 0, 6, 3),
	(1, 29.99, 1, 7, 4)
;