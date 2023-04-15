-- INSERT into prodotti (nome , descrizione, prezzo)
-- value ('iPhone 14', 'Smartphone apple', 1500);
-- INSERT into prodotti (nome , descrizione, prezzo)
-- value ('Google pixel 7', 'Smartphone google', 800);
-- -- si una insert into per inserire oggetti all'interno delle tabelle con insert into nome tabella (dati dell'oggetto)
-- -- -- con value creo l'oggetto da inserire
-- -- -- UPDATE prodotti SET descrizione='Smartphone apple',prezzo=1400;
-- -- -- UPDATE nome tabella SET campo serve per modificare le informazioni di un oggetto all'interno del database se non si inserisce un where verranno cambiati i campi segnati di tutti gli oggetti del database

-- -- -- DELETE from prodotti where id =5;
-- -- -- delete serve per eliminare il singolo oggetto dalla tabella e si utilizza usando delete from nome della tabella da cui devo eliminare l'oggetto e un where che sarebbe una condizione in questo casa l'oggetto con id = 1
-- -- -- DELETE from prodotti;

-- INSERT into immagini(tag, url,dimensione, prodotto_id)
-- value('iPhone','http://store.com/images/iphone.png',300,1);
-- INSERT into immagini(tag, url,dimensione, prodotto_id)
-- value('iPhone retro','http://store.com/images/iphone2.png',300,1);
-- INSERT into immagini(tag, url,dimensione, prodotto_id)
-- value('pixel','http://store.com/images/pixel.png',300,2);
-- INSERT into immagini(tag, url,dimensione, prodotto_id)
-- value('pixel retro','http://store.com/images/pixel2.png',300,2);
-- -- INSERT into immagini(tag)
-- -- value('aulab')

-- -- se provassi ad aggiungere un'immagine ad un prodotto con un id non presente nel database mi darebbe errore in quanto l'operazione non sarebbe possibile

-- INSERT into fornitori (nome)
-- value('fornitore 1');

-- INSERT into fornitori (nome)
-- value('fornitore 2');

-- INSERT into fornitori (nome)
-- value('fornitore 3');

-- -- relazione many to many
-- INSERT into fornitori_prodotti(fornitore_id,prodotto_id)
-- value(1,1);

-- INSERT into fornitori_prodotti(fornitore_id,prodotto_id)
-- value(1,2);

-- INSERT into fornitori_prodotti(fornitore_id,prodotto_id)
-- value(2,2);

INSERT into prodotti(nome, descrizione, prezzo)
values ('Maglia Lacoste', 'Maglia in cotone', 100),
        ('Maglia Diesel', 'Maglia in cotone', 100),
        ('Maglione Timberland', 'Msglionr lana', 120),
        ('Jeans Levi''s', 'Jeans cotone', 80);
        
INSERT into varianti (attributo, valore, prodotto_id)
values('colore','bianco',1),
('colore','nero',1),
('taglia','m',1),
('taglia','l',1),
('colore','bianco',2),
('colore','nero',2),
('taglia','m',2),
('taglia','l',2),
('colore','giallo',3),
('colore','verde',3),
('taglia','l',3),
('taglia','xl',3),
('taglia','40',4),
('taglia','42',4),
('taglia','44',4);

INSERT into fornitori (nome)
values ('I miei maglioni srl'),
('Tutto abbigliamento spa'),
('Solo maglie srl');

INSERT into fornitori_prodotti (fornitore_id, prodotto_id)
values(1,3),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2);