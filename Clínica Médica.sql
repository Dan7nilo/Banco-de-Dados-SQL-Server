CREATE TABLE Paciente
(
CPF VARCHAR(14) PRIMARY KEY,
Nome_paciente VARCHAR(40),
Telefone VARCHAR(14),
Numero_plano INT,
Nome_plano VARCHAR(20),
Tipo_plano VARCHAR(10),
);

CREATE TABLE Medico
(
CRM INT PRIMARY KEY,
Nome_medico VARCHAR(30),
Especialidade VARCHAR(20)
);

CREATE TABLE Exame
(
Codigo INT PRIMARY KEY,
Especificacao VARCHAR(20),
Preco MONEY
);

CREATE TABLE Consulta
(
Numero_consulta_id INT PRIMARY KEY IDENTITY,
Data_consulta DATE,
Horario_consulta TIME,
fk_paciente_CPF VARCHAR(14) FOREIGN KEY REFERENCES Paciente(CPF),
fk_medico_crm INT FOREIGN KEY REFERENCES Medico(CRM),
);

CREATE TABLE Pedido_exame
(
Numero_pedido INT IDENTITY(2200,1) PRIMARY KEY ,
Resultado VARCHAR(40),
Data_exame DATE,
Valaor_pagar MONEY,
fk_consulta_numero_consulta INT, 
fk_exame_codigo INT, 
);

CREATE TABLE exame
(
Numero_pedido INT IDENTITY(2200,1) PRIMARY KEY ,
Resultado VARCHAR(40),
Data_exame DATE,
Valaor_pagar MONEY,
fk_consulta_numero_consulta INT, 
fk_exame_codigo INT, 
);

SET IDENTITY_INSERT Pedido_exame ON
INSERT INTO Pedido_exame(Numero_pedido,Resultado,Data_exame,Vlaor_pagar) VALUES ('','','26/05/2023',0.0)

INSERT INTO exame VALUES ('','26/03/2023',0.00,22004,10030)
INSERT INTO exame VALUES ('normal','11/07/2022',0.00,22007,10040)
INSERT INTO exame VALUES ('inconsistente','13/10/2022',0.00,22009,10020)
INSERT INTO exame VALUES ('normal','24/05/2023',0.00,22002,10010)

select * from exame 

--DELETE FROM Exame;
--DBCC checkIDENT ('exame',RESEED,2199)

create trigger Atualiza_exame
on exame
after insert
as
begin
 
end