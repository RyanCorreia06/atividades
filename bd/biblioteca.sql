use biblioteca;

create database biblioteca;
go

use biblioteca;
go

create table categoriaObra(
	codigo int primary key auto_increment,
	nome varchar(100)
);
create table obra(
	codigo bigint primary key auto_increment,
	isbn varchar(30)unique,
	titulo varchar(100) not null,
	autores varchar(100)not null,
	palavrasChave varchar(100),
	dataPublicacao date,
	numeroEdicao int,
	editora varchar(100),
	numeroPagina int,
	categoria int
);
ALTER TABLE obra
ADD CONSTRAINT FK_obra_categoria
FOREIGN KEY (categoria)
REFERENCES categoriaObra(codigo);

CREATE TABLE categoriaLeitor(
    codigo INT PRIMARY KEY auto_increment,
    nome VARCHAR(100),
    dias INT DEFAULT 7
);

CREATE TABLE leitor(
    codigo BIGINT PRIMARY KEY auto_increment,
    documento VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2),
    telefone VARCHAR(30) NOT NULL,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(100),
    categoria INT,
    dataNascimento DATE
);

ALTER TABLE leitor
ADD CONSTRAINT FK_leitor_categoria
FOREIGN KEY (categoria)
REFERENCES categoriaLeitor(codigo);

CREATE TABLE copia(
    codigo BIGINT PRIMARY KEY auto_increment,
    obra BIGINT,
    status VARCHAR(50),
    obs text
);

ALTER TABLE copia
ADD CONSTRAINT FK_copia_obra
FOREIGN KEY (obra)
REFERENCES obra(codigo);

CREATE TABLE funcionario(
    codigo BIGINT PRIMARY KEY auto_increment,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    telefone VARCHAR(30) NOT NULL,
    dataNascimento DATE,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100)
);

ALTER TABLE funcionario
ADD logradouro VARCHAR(100);

CREATE TABLE reserva(
    codigo BIGINT PRIMARY key auto_increment,
    dataReserva DATE,
    dataPrevistaRetirada DATE,
    dataPrevistaDevolucao DATE,
    leitor BIGINT,
    obra BIGINT
);

ALTER TABLE reserva
ADD CONSTRAINT FK_reserva_leitor
FOREIGN KEY (leitor)
REFERENCES leitor(codigo);

ALTER TABLE reserva
ADD CONSTRAINT FK_reserva_obra
FOREIGN KEY (obra)
REFERENCES obra(codigo);

CREATE TABLE emprestimo(
    codigo BIGINT PRIMARY KEY auto_increment,
    dataEmprestimo DATETIME,
    dataPrevistaDevolucao DATETIME,
    dataDevolucao DATETIME,
    multa DECIMAL(18,2) DEFAULT 0,
    obs VARCHAR(400),
    leitor BIGINT,
    copia BIGINT,
    funcionario BIGINT
);

ALTER TABLE emprestimo
ADD CONSTRAINT FK_emprestimo_leitor
FOREIGN KEY (leitor)
REFERENCES leitor(codigo);

ALTER TABLE emprestimo
ADD CONSTRAINT FK_emprestimo_copia
FOREIGN KEY (copia)
REFERENCES copia(codigo);

ALTER TABLE emprestimo
ADD CONSTRAINT FK_emprestimo_funcionario
FOREIGN KEY (funcionario)
REFERENCES funcionario(codigo);