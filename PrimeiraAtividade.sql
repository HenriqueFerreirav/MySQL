CREATE DATABASE RH_HenriqueEntregas;

USE RH_HenriqueEntregas;

CREATE TABLE funcionario(
	id BIGINT auto_increment,
    Nome VARCHAR(255),
    CPF BIGINT(11),
    RG BIGINT(9),
    Cargo VARCHAR(255),
    Salario DECIMAL(6,2),
	PRIMARY KEY(id)  
);

INSERT INTO funcionario(Nome,CPF,RG,Cargo,Salario)
VALUES("Carlos",38462846798,443679887,"Vendedor",1500.00);

INSERT INTO Funcionario(Nome,CPF,RG,Cargo,Salario)
VALUES("Maria",48485473647,293743894,"Vendedora",1500.00);

INSERT INTO Funcionario(Nome,CPF,RG,Cargo,Salario)
VALUES("Marcos",53945689800,847368234,"Entregador",2500.00);

INSERT INTO Funcionario(Nome,CPF,RG,Cargo,Salario)
VALUES("Henrique",45978345789,987436273,"Entregador",2500.00);

INSERT INTO Funcionario(Nome,CPF,RG,Cargo,Salario)
VALUES("Aimée",12345678901,987654321,"Gerente",5000.00);

SELECT * FROM Funcionario;

SELECT * FROM funcionario WHERE Salario < 2000.00;

SELECT * FROM funcionario WHERE Salario > 2000.00;


ATUALIZAR produtos
SET nome =  " Camiseta "
ONDE id = 1 ;


-- BÔNUS
-- função que deleta um determinado dado de uma tabela
DELETE  FROM produtos WHERE id = 1 ;

-- comando que desativa o 'modo seguro' do mysql permitindo que seja executado update e delete
SET SQL_SAFE_UPDATES = 0 ;
