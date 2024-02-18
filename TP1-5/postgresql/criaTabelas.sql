/* 
   Fazer copy-paste deste ficheiro
   para o Editor SQL e executar.
*/

/* 
Estes dois comandos drop (comentados) permitem remover as tabelas emp e dep da base de dados (se ja' tiverem sido criadas anteriormente)

drop table emp;
drop table dep;
*/

/* Cria a tabela dos departamentos
 */
CREATE TABLE emp(
	nemp	 numeric(4),
	nome	 varchar(20)   NOT NULL,
	funcao	 varchar(12)   NOT NULL,
	encar	 numeric(4),
	data_entrada date      NOT NULL,
	sal		 numeric(7)    NOT NULL,
	premios	 numeric(7)    DEFAULT NULL,
	ndep	 numeric(2) NOT NULL,

	PRIMARY KEY(nemp)
);


/* Cria a tabela dos empregados
 */
CREATE TABLE dep(
	ndep	 numeric(2),
	nome	 varchar(15) NOT NULL,
	local    varchar(15) NOT NULL,
	PRIMARY KEY(ndep)
);


CREATE TABLE descontos (
	escalao NUMERIC(2) CONSTRAINT pk_esc_descontos PRIMARY KEY ,
	salinf NUMERIC(7) CONSTRAINT nn_inf_descontos
	CHECK (salinf IS NOT NULL),
	salsup NUMERIC(7) CONSTRAINT nn_sup_descontos NOT NULL,
	CONSTRAINT ck_salinf_salsup CHECK (salinf < salsup)
);

ALTER TABLE emp ADD CONSTRAINT emp_fk1 FOREIGN KEY (encar) REFERENCES emp(nemp);
ALTER TABLE emp ADD CONSTRAINT emp_fk2 FOREIGN KEY (ndep) REFERENCES dep(ndep);