CREATE database  FLORICULTURA;
USE FLORICULTURA

CREATE TABLE CLIENTES (
REGISTRO int PRIMARY KEY AUTO_INCREMENT,
RG varchar(12),
NOME varchar(255),
TELEFONE varchar(14),
ENDERECO varchar(255)
);

CREATE TABLE PRODUTOS (
COD_PRDTS int PRIMARY KEY AUTO_INCREMENT,
TIPO varchar(255),
QTDE_ESTOQUE int,
NOMEPRODUTO varchar(255),
PRECO dcimal(10,2)
);


CREATE TABLE COMPRA (
NOTAFISCAL int PRIMARY KEY AUTO_INCREMENT,
VALOR_TOTAL decimal,
REGISTRO int,
FOREIGN KEY(REGISTRO) REFERENCES CLIENTES (REGISTRO)
);

CREATE TABLE COMPRA PRDTS (
DATA_COMPRA date,
QTDE_ITENS int,
COD_PRDTS int,
NOTAFISCAL int,
FOREIGN KEY(COD_PRDTS) REFERENCES PRODUTOS (COD_PRDTS)/*falha: chave estrangeira*/
)

