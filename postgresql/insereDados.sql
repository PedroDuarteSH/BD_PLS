/* 
   Fazer copy-paste deste ficheiro
   para o SQL Editor do PgAdmin e executar (F5).
*/

/* Insere os departamentos
 */
INSERT INTO dep VALUES (10, 'Contabilidade', 'Condeixa');
INSERT INTO dep VALUES (20, 'Investigacao',  'Mealhada');
INSERT INTO dep VALUES (30, 'Vendas',        'Coimbra');
INSERT INTO dep VALUES (40, 'Planeamento',   'Montemor');



/* Insere os empregrados
 * Note-se  que  como  existe a  restricao  de  o  numero
 * do encarregado ser uma chave estrangeira (que por acaso
 * aponta  para a  chave primaria  da  mesma  tabela)  os 
 * empregados  teem  que  ser  inseridos na  ordem certa.
 * Primeiro o presidente (que nao tem superiores)  depois
 * os empregados cujo encarregado e' o presidente e assim
 * sucessivamente.
 * 
 */
INSERT INTO emp VALUES(1839, 'Jorge Sampaio',  'Presidente'  ,NULL, '1984-02-11', 890000,  NULL, 10);

INSERT INTO emp VALUES(1566, 'Augusto Reis',   'Encarregado' ,1839, '1985-02-13', 450975,  NULL, 20);
INSERT INTO emp VALUES(1698, 'Duarte Guedes',  'Encarregado' ,1839, '1991-11-25', 380850,  NULL, 30);
INSERT INTO emp VALUES(1782, 'Silvia Teles',   'Encarregado' ,1839, '1986-11-03',  279450,  NULL, 10);

INSERT INTO emp VALUES(1788, 'Maria Dias',     'Analista'    ,1566, '1982-11-07',  565000,  NULL, 20);
INSERT INTO emp VALUES(1902, 'Catarina Silva', 'Analista'    ,1566, '1993-04-13',  435000,  NULL, 20);

INSERT INTO emp VALUES(1499, 'Joana Mendes',   'Vendedor'    ,1698, '1984-10-04',  145600, 56300, 30);
INSERT INTO emp VALUES(1521, 'Nelson Neves',   'Vendedor'    ,1698, '1983-02-27',  212250, 98500, 30);
INSERT INTO emp VALUES(1654, 'Ana Rodrigues',  'Vendedor'    ,1698, '1990-12-17',  221250, 81400, 30);
INSERT INTO emp VALUES(1844, 'Manuel Madeira', 'Vendedor'    ,1698, '1985-04-21',  157800,     0, 30);
INSERT INTO emp VALUES(1900, 'Tome Ribeiro',   'Continuo'    ,1698, '1994-03-05',   56950,  NULL, 30);

INSERT INTO emp VALUES(1876, 'Rita Pereira',   'Continuo'    ,1788, '1996-02-07',   65100,  NULL, 20);
INSERT INTO emp VALUES(1934, 'Olga Costa',     'Continuo'    ,1782, '1986-06-22',   68300,  NULL, 10);

INSERT INTO emp VALUES(1369, 'Antonio Silva',  'Continuo'    ,1902, '1996-12-22',  70800,  NULL, 20);


/* Insere na tabela de descontos
 */
INSERT INTO descontos VALUES (1, 55000, 99999);
INSERT INTO descontos VALUES (2, 100000, 210000);
INSERT INTO descontos VALUES (3, 210001, 350000);
INSERT INTO descontos VALUES (4, 350001, 550000);
INSERT INTO descontos VALUES (5, 550001, 9999999);