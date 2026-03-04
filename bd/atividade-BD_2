CREATE TABLE Oficina (
    codigo INT PRIMARY KEY,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    responsavel VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100));

CREATE TABLE Fabricante (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    responsavel VARCHAR(100));

CREATE TABLE Modelo (
    codigo_modelo INT PRIMARY KEY,
    tipo VARCHAR(50),
    peso DECIMAL(10,2),
    fabricante_codigo INT,
    horaTeste INT,
    FOREIGN KEY (fabricante_codigo)
        REFERENCES Fabricante(codigo));

CREATE TABLE Maquina (
    numero_registro INT PRIMARY KEY,
    ano_fabricacao INT,
    horas_uso INT,
    modelo_codigo INT,
    FOREIGN KEY (modelo_codigo)
        REFERENCES Modelo(codigo_modelo));

CREATE TABLE Tecnico (
    codigo_funcional INT PRIMARY KEY,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    salario DECIMAL(10,2),
    qualificacao VARCHAR(100),
    oficina_codigo INT,
    FOREIGN KEY (oficina_codigo)
        REFERENCES Oficina(codigo));

CREATE TABLE Teste (
    codigo INT PRIMARY KEY,
    pontuacao DECIMAL(5,2),
    resultado VARCHAR(50),
    recomendacoes TEXT,
    oficina_codigo INT,
    tecnico_codigo INT,
    FOREIGN KEY (oficina_codigo)
        REFERENCES Oficina(codigo),
    FOREIGN KEY (tecnico_codigo)
        REFERENCES Tecnico(codigo_funcional));

CREATE TABLE Tecnico_Modelo (
    tecnico_codigo INT,
    modelo_codigo INT,
    PRIMARY KEY (tecnico_codigo, modelo_codigo),
    FOREIGN KEY (tecnico_codigo)
        REFERENCES Tecnico(codigo_funcional),
    FOREIGN KEY (modelo_codigo)
        REFERENCES Modelo(codigo_modelo));

CREATE TABLE Oficina_Modelo (
    oficina_codigo INT,
    modelo_codigo INT,
    PRIMARY KEY (oficina_codigo, modelo_codigo),
    FOREIGN KEY (oficina_codigo)
        REFERENCES Oficina(codigo),
    FOREIGN KEY (modelo_codigo)
        REFERENCES Modelo(codigo_modelo));
