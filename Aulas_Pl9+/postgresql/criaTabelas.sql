drop table if exists LIVROS;
drop table if exists EDITORAS;
drop table if exists AUTORES;

/*==============================================================*/
/* Table: AUTORES                                               */
/*==============================================================*/
create table AUTORES  (
   ID_AUTOR             NUMERIC(4)                        not null,
   NOME                 VARCHAR(20)                     not null,
   IDADE                NUMERIC(3),
   MORADA               VARCHAR(50),
   GENERO               VARCHAR(20),
   NACIONALIDADE        VARCHAR(10),
   SEXO                 CHAR(1),
   TELEFONE             VARCHAR(15),
   constraint PK_AUTORES primary key (ID_AUTOR)
);

/*==============================================================*/
/* Table: EDITORAS                                              */
/*==============================================================*/
create table EDITORAS  (
   ID_EDITORA           NUMERIC(4)                        not null,
   NOME                 VARCHAR(20)                     not null,
   MORADA               VARCHAR(50),
   TELEFONE             VARCHAR(15),
   FAX                  VARCHAR(15),
   constraint PK_EDITORAS primary key (ID_EDITORA)
);

/*==============================================================*/
/* Table: LIVROS                                                */
/*==============================================================*/
create table LIVROS  (
   ID_LIVRO             NUMERIC(4)                        not null,
   ID_AUTOR             NUMERIC(4),
   ID_EDITORA           NUMERIC(4),
   TITULO               VARCHAR(50)                     not null,
   ISBN                 VARCHAR(10)                     not null,
   GENERO               VARCHAR(20)                     not null,
   PAGINAS              NUMERIC(4)                        not null,
   PRECO                NUMERIC(7,2),
   UNIDADES_VENDIDAS    NUMERIC(5),
   DATA_EDICAO          DATE,
   constraint PK_LIVROS primary key (ID_LIVRO),
   constraint FK_LIVROS_REF_AUTORES foreign key (ID_AUTOR)
         references AUTORES (ID_AUTOR),
   constraint FK_LIVROS_REF_EDITORAS foreign key (ID_EDITORA)
         references EDITORAS (ID_EDITORA)
);

insert into editoras (ID_EDITORA,NOME,MORADA,TELEFONE,FAX) values(1,'FCA - EDITORA','Rua Estefania, 183 - 1o Esq. 1000-154 Lisboa','213532735','213577827');
insert into editoras (ID_EDITORA,NOME,MORADA,TELEFONE,FAX) values(2,'PORTO EDITORA','Rua da Esquina, 132 - 8o Esq. 2200-154 Porto','224564454','224564456');
insert into editoras (ID_EDITORA,NOME,MORADA,TELEFONE,FAX) values(3,'MacGraw-Hill','Av. 4th of July, PO BOX 33323-233','9192292212','919299829');

insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 1,'Sergio Sousa',39,'Cova da Piedade - 1000 Lisboa','M','Portuguesa','Informatica','935764839');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 2,'Vitor Goncalves',41,'Baixa da Banheira - 1200 Lisboa','M','Portuguesa','Informatica','2156784930');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 3,'Carlos Milheiro',64,'Rua do Infante - 2000 Porto','M','Portuguesa','Policial','224968796');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 4,'Maria Jose Sousa',22,'Av. Fernao Magalhaes - 3000 Coimbra','F','Portuguesa','Policial','239864938');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 5,'Luis Gomes',59,'Rua do Ouro - 1100 Lisboa','M','Portuguesa','Informatica','214593929');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 6,'Fernando Tavares',31,'Rua do Brasil - 3000 Coimbra','M','Portuguesa','Aventura','239758393');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 7,'Pedro Coelho',24,'Alameda Calouste Gulbenkian - 3200 Coimbra','M','Portuguesa','','239928478');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 8,'Ana Capucho',36,'Rua Ferreira Borges - 3200 Coimbra','F','Portuguesa','Romance','239847569');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values( 9,'Tania Azevedo',28,'Praca da Republica  - 2750 Leiria','F','Portuguesa','Romance','240954827');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(10,'Christian Crumush',52,'Rue de Brussels - 3344433-21 Brussels','M','Belga','Policial','+44764396958');

insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(11,'Rui Lemos',29,'Rua Augusta - 1100 Lisboa','M','Portuguesa','Policial','219584837');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(12,'Vitor Beca',33,'Largo da Rua Direita, 2-Esq. - 1300 Cascais','M','Portuguesa','Informatica','964838495');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(13,'Robert Cowart',37,'Trafalgar Square 3328893 London','M','Inglesa','Informatica','+5793847583928');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(14,'Eurico Fonseca',32,'Rua Enfanta Da. Maria - 1000 Lisboa','M','Portuguesa','Aventura','219857483');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(15,'Norberto Candeias',46,'Av. da Bavista - 2000 Porto','M','Portuguesa','Romance','229586979');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(16,'Rui Vega',51,'Alameda Afonso Henriques  - 3000 Lisboa','M','Portuguesa','Policial','219596979');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(17,'Paulo Loureiro',50,'Rua do Nascimento - 1300 Lisboa','M','Portuguesa','Poesia','967128374');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(18,'Samuel Santos',57,'Rua da Jaqueta aberta - 3320 Aljubarrota','M','Portuguesa','Policial','913495869');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(19,'Alves Marques',33,'Largo do Mosteiro - 4550 Tomar','M','Portuguesa','Informatica','938695949');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(20,'Claudio Tereso',54,'Castelo da Encosta - 2300 Leiria','M','Portuguesa','Informatica','919495837');
insert into autores (ID_AUTOR,NOME,IDADE,MORADA,SEXO,NACIONALIDADE,GENERO,TELEFONE) values(21,'Jose Luis Pereira',34,'Palacio de Belem  - 1000 Lisboa','M','Portuguesa','Informatica','219485938');

insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 1,1, 1,'9727221580','Microsoft Office 2000 para todos','Informatica',27,596,10030,CURRENT_DATE-200);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 2,1, 1,'9727221807','Microsoft Office 2000 sem fronteiras','Informatica',32,640,15500,CURRENT_DATE-30);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 3,1, 2,'9727221777','Fundamental do Word 2000','Informatica',24,280,12000,CURRENT_DATE-400);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 4,1, 3,'9727221718','Domine a 110% Word 2000','Informatica',22,310,7000,CURRENT_DATE-1000);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 5,1,17,'9727220827','Windows NT Server 4 para profissionais','Informatica',35,624,3300,CURRENT_DATE-1);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 6,1,18,'9727220851','Windows NT Server 4 Curso Completo','Informatica',37,458,8700,CURRENT_DATE-3233);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 7,1,19,'9727221289','Tecnologia dos Sistemas Distribuidos','Informatica',24,524,7200,CURRENT_DATE-23);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 8,1,17,'9727221394','TCP/IP em redes Microsoft para profissionais','Informatica',32,424,1500,CURRENT_DATE);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values ( 9,1,20,'9727221505','Redes Locais em Windows 98 e 95','Informatica',22,220,3000,CURRENT_DATE-777);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (10,1,21,'9727221432','Tecnologia de Base de Dados','Informatica',24,524,13000,CURRENT_DATE-4333);

insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (11,1, 4,'9721212232','O misterio da porta trancada','Policial',28,323,4000,CURRENT_DATE-4333);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (12,3, 6,'9726436532','Os cinco na praia','Aventura'   ,9,768,2000,CURRENT_DATE-333);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (13,1, 8,'9727236541','A outra cara metade','Romance'    ,71,824,12726,CURRENT_DATE-323);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (14,2,11,'9727221343','A balada de Hill Street','Policial'   ,49,524,20000,CURRENT_DATE-422);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (15,2,20,'9727763764','A balada de Nova Iorque','Policial'   ,16,758,20520,CURRENT_DATE-13);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (16,1,17,'4632846334','O Corsario Negro','Aventura'   ,27,435,8700,CURRENT_DATE-387);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (17,1,14,'5435435243','A lenda do veu dourado','Romance'    ,37,354,7200,CURRENT_DATE-877);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (18,3,13,'4325434435','Tu, eu e mais uns quantos','Aventura'   ,38,765,3500,CURRENT_DATE-66);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (19,2,12,'9876987676','Oracle 8 - Curso completo','Informatica',50,467,9400,CURRENT_DATE-733);
insert into livros (ID_LIVRO,ID_EDITORA,ID_AUTOR,ISBN,TITULO,GENERO,PRECO,PAGINAS,UNIDADES_VENDIDAS,DATA_EDICAO) values (20,1,16,'5512125551','A vizinha do lado','Romance'    ,49,324,2100,CURRENT_DATE-478);
