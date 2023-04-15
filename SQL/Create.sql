-- per creare una relazione one to many devo inserire la foreign key all'interno della tabella con più risposte
-- la foreign key si prende dello stesso tipo della primary key del campo che sto referenziando in questo caso immagini referenzia prodotti quindi la foreign key sarà dello stesso tipo di id




CREATE TABLE prodotti(
    -- CREATE TABLE serve per creare una tabella al'interno del database
    id bigint auto_increment primary key,
    -- auto_increment serve per dire al database di auto incrementare il numero dell'id ogni volta che aggiungo un nuovo oggetto e di non tornare indietro anche se cancello qualche oggetto dal database
    nome varchar(100),
    -- non utilizzare mai char ma varchar mettendo tra parentesi il numero massimo di caratteri che l'oggetto può avere
    descrizione varchar(1024),
    -- di solito si usano le potenze di  2 per i 
    -- numeri dentro la parentesi di un varchar
    prezzo float check(prezzo >0)
    -- con check inserisco una condizione che l'oggetto deve avere in questo caso sul prezzo che deve essere maggiore di 0
);

-- default si usa per inserire un qualcosa di automatico all'interno del database qualora nn venga inserito come richiesto
CREATE TABLE varianti(
    id bigint auto_increment primary key,
    attributo varchar(100),
    valore varchar(100),
    prodotto_id bigint references prodotti(id)

);

CREATE TABLE fornitori(
    id bigint auto_increment primary key,
    nome varchar(100)

);

-- relazione many to many si crea una tabella con le primary key delle tabelle da collegare
CREATE TABLE fornitori_prodotti(
    fornitore_id bigint references fornitori(id),
    prodotto_id bigint references prodotti(id)
    
);
