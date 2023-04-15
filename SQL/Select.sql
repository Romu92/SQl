-- select serve a cercare gli oggetti all'interno del database select * vuol dire ricerca tutti gli elementi from (nella tabella) prodotti
-- no mettere commenti sotto le query altrimenti da errore
-- select *
-- from immagini;
-- Select *
-- from prodotti;

-- Select *
-- from prodotti
-- join immagini on prodotto_id = immagini.prodotto_id;

-- se dopo il nome della tabella metto uno spazio e un nome sto assegnando un alias per abbreviare il nome della tabella

-- -- nella many to many non posso collegare direttamente due tabelle ma devo passare dalla tabella intermedia che ho creato per collegarli in questo caso fornitori_prodotti formando due join
-- Select *
-- from prodotti p
-- join fornitori_prodotti fp on p.id = fp.prodotto_id
-- join fornitori f on fp.fornitore_id= f.id;
-- al select posso indicare cosa mostrarmi del database in questo caso voglio solo nome prodotto e nome fornitore
-- nopn si pussono scrivere alias prima di averli denominati
-- Select p.nome, f.nome
-- from prodotti p
-- join fornitori_prodotti fp on p.id = fp.prodotto_id
-- join fornitori f on fp.fornitore_id= f.id;
-- select* from fornitori
-- la left join ti include anche gli elementi che non hanno un collegamento e riporta null in quei campi
-- non usare la right join che sono complicate
-- quando faccio una jooin si parte sempre dalla tabella from infatti in questo caso l'id nel where si riferisce ai fornitori
-- Select p.nome, f.nome
--     from fornitori f
--     left join fornitori_prodotti fp on f.id = fp.fornitore_id
--     left join prodotti p on fp.fornitore_id= p.id
--     where p.id=2;
-- si usa like per specificare la ricerca in questo caso prende tutti i prodotti che nel nome hanno quello dopo il LIKE

Select p.nome, f.nome
    from fornitori f
    left join fornitori_prodotti fp on f.id = fp.fornitore_id
    left join prodotti p on fp.fornitore_id= p.id
    where p.nome LIKE 'iphone';