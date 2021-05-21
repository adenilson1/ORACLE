SELECT * FROM TB_CLIENTES

DESC TB_CLIENTES;

ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES
PRIMARY KEY (CPF);

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

ALTER TABLE TB_CLIENTES RENAME COLUMN PROMEIRA_COMPRA TO PRIMEIRA_COMPRA

INSERT INTO TB_CLIENTES (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO,
VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES
('00388934505', 'João da Silva','Rua Projetada A numero 10',NULL, 'Vila Roman', 'Três Rios', 
'RJ', '22222222', 53, 'M', 20000.00, 2000, 0,'12/10/1965')

SELECT TO_CHAR (DATA_NASCIMENTO, 'MM') FROM TB_CLIENTES

DELETE FROM TB_CLIENTES WHERE CPF = '00388934505'

INSERT INTO TB_CLIENTES (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO,
VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES
('00388934505', 'João da Silva','Rua Projetada A numero 10',NULL, 'Vila Roman', 'Três Rios', 
'RJ', '22222222', 53, 'M', 20000.00, 2000, 0, TO_DATE('12/10/1965','DD/MM/YYYY'))


INSERT INTO TB_CLIENTES (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO,
VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES
('00388934777', 'João da Silva','Rua Projetada A numero 10',NULL, 'Vila Roman', 'Três Rios', 
'RJ', '22222222', 53, 'M', 20000.00, 2000, 0, TO_DATE('12/10/1965','MM/DD/YYYY'))

DELETE FROM TB_CLIENTES WHERE CPF = '00388934777'

