CREATE VIEW vw_livrosLidos AS
    SELECT `anoPublicacao`
    FROM `livrosLidos` 
    WHERE `anoPublicacao` > '1986'
    ORDER BY `anoPublicacao` DESC


CREATE VIEW vw_pessoa AS
    SELECT nome, genero
    FROM pessoa
    WHERE genero = 'F'
    ORDER BY nome;

CREATE VIEW vw_pessoaM AS
    SELECT nome, genero
    FROM pessoa
    WHERE genero = 'M'
    ORDER BY nome;

CREATE VIEW vw_paginas AS
    SELECT nomeLivro, paginas
    FROM livrosLidos
    WHERE paginas > '200'
    ORDER BY nomeLivro;