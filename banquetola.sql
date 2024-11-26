CREATE TABLE pessoa (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    dataNascimento DATE NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE livrosLidos (
    idLivro INT NOT NULL AUTO_INCREMENT,
    nomeLivro VARCHAR(30) NOT NULL,
    PRIMARY KEY(idLivro)
);

CREATE TABLE biblioteca (
    idBiblioteca INT NOT NULL AUTO_INCREMENT,
    nomeBiblioteca VARCHAR(30) NOT NULL,
    PRIMARY KEY(idBiblioteca)
);

ALTER TABLE pessoa
ADD COLUMN livroLido int;

ALTER TABLE pessoa
ADD FOREIGN KEY (livroLido)
REFERENCES livrosLidos(idLivro);

ALTER TABLE livrosLidos
ADD COLUMN biblioteca int;

ALTER TABLE livrosLidos
ADD FOREIGN KEY (biblioteca)
REFERENCES biblioteca(idBiblioteca);

SELECT * FROM pessoa

ALTER TABLE livrosLidos
MODIFY COLUMN nomeLivro VARCHAR(200);