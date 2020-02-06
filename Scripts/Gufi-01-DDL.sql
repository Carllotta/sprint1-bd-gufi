-- Criando base de dados
CREATE DATABASE Gufi;

-- Definindo o banco de dados a ser utilizado
USE Gufi;

-- Criação das tabelas
CREATE TABLE TipoUsuario(
	ID_TipoUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE TipoEvento(
	ID_TipoEvento INT PRIMARY KEY IDENTITY,
	TituloTipoEvento VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Instituicao(
	ID_Instituicao INT PRIMARY KEY IDENTITY,
	CNPJ CHAR(14) NOT NULL UNIQUE,
	NomeFantasia VARCHAR(255) NOT NULL UNIQUE,
	Endereco VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Usuario(
	ID_Usuario INT PRIMARY KEY IDENTITY,
	NomeUsuario VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL UNIQUE,
	Senha VARCHAR(255) NOT NULL,
	DataCadastro DATETIME2 NOT NULL,
	FK_TipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(ID_TipoUsuario)
);


