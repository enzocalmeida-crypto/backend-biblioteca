	CREATE TABLE aluno (
	id_aluno INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR(100) NOT NULL,
	data_nacimento DATE,
	PRIMARY KEY(id_aluno)
);

CREATE TABLE funcionario (
	id_funcionario INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR(100) NOT NULL, 
	email VARCHAR(100) NOT NULL UNIQUE,
	celular VARCHAR(14) NOT NULL UNIQUE,
	PRIMARY KEY(id_funcionario)
);


CREATE TABLE livro (
	isbn INTEGER GENERATED ALWAYS AS IDENTITY,
	autor VARCHAR(100) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	ano_publicacao DATE NOT NULL,
	PRIMARY KEY (isbn) 
);

CREATE TABLE emprestimo (
	id_emprestimo INTEGER GENERATED ALWAYS AS IDENTITY,
	id_aluno INTEGER NOT NULL,
	id_funcionario INTEGER NOT NULL,
	data_emprestimo DATE NOT NULL 	
);


INSERT INTO aluno (nome, data_nacimento)
VALUES
('Enzo','2010-03-22'),
('Tacitus Kilgore','2009-12-04'),
('Dutch Van Der Linde','2008-11-03'),
('Micah Bell','2011-08-22'),
('Estevao','2009-05-12'),
('Tarcisio','2012-12-24'),
('Douglas','2009-10-13'),
('Micael','2013-08-22');



INSERT INTO funcionario(nome, email, celular)
VALUES
('Arthur Morgan', 'arthurmorgan@gmail.com','(16)99216-8080'),
('Rip Van Winkle', 'rvwinkle@gmail.com','(16)99677-3780'),
('Jonh Marston','johnmastro@gmail.com','(16)99424-5773'),
('Sadie Adler','sadiealer@gmail.com','(16)99132-2141'),
('Arthur Roman', 'arthurroman@gmail.com','(16)99216-7589'),
('Rip Van Winkle', 'askwftttt@gmail.com','(16)99683-7675'),
('Jonh Marston','jaoduejdos@gmail.com','(16)99724-7777'),
('Sadie Adler','sadwywsur@gmail.com','(16)99136-2143');



INSERT INTO emprestimo (id_aluno,id_funcionario,data_emprestimo)
VALUES
('1','1','2026-03-22'),
('2','2','2026-12-04'),
('3','3','2026-11-03'),
('4','4','2026-08-22'),
('5','5','2026-05-12'),
('6','6','2026-12-24'),
('7','7','2026-10-13'),
('8','8','2026-08-22');


INSERT INTO livro (autor, nome, ano_publicacao)
VALUES
('Arthur Morgan', 'Red Dead Redemption 2','1899-07-22'),
('Rip Van Winkle', 'Vidas Secas','1930-06-30'),
('Jonh Marston','Red Dead Redemption','1911-05-31'),
('Sadie Adler','Tacitus kilgore','1921-09-22'),
('JK Roling', 'Harry Potter','2000-03-12'),
('Stiphen King', 'IT','1979-05-05'),
('St.Agostinho','As confissoes de santo agstinho','1147-08-22'),
('Joao','Biblia','0066-05-18');


SELECT * FROM livro