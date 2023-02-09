create database sistema-resilia;
use resilia;

-- tabela cursos
create table cursos (
    id int not null auto_increment,
    nome_curso varchar(50),
    turno_curso varchar(50)
    carga_horaria int );

-- tabela turmas
create table turmas (
    id int not null auto_increment,
    id_curso int,
    nome_turma varchar(100),
    turno_turma varchar(15) 
    foreign key(id_curso) references cursos(id));

-- tabela de alunos
create table alunos (
    id int auto_increment primary key,
    nome_aluno varchar(20),
    sobrenome_aluno varchar(20),
    cpf_aluno varchar(14),
    matricula_aluno varchar(50),
    email_aluno varchar(50) 
    id_turma int,
    foreign key(id_turma) references turmas(id));

-- informações
insert into cursos values (nome_curso, turno_curso, carga_horaria) values
->("front-end", "vespertino", 60),
->("back-end", "noturno", 60),
->("full stack", "integral", 120);

insert into turmas (nome_turma, turno_turma, id_curso, inicio, termino) values
->("turma_1", "integral", 1, "10-02-2023", "09-07-2023"),
->("turma_2", "vespertino", 2, "10-02-2023", "09-07-2023"),
->("turma_3", "noturno", 3, "10-02-2023", "09-07-2023");

insert into alunos (nome_aluno, sobrenome_aluno, cpf_aluno, matricula_aluno, email_aluno, id_turma) values
->("Arthur", "Vidal", "123.456.789-00", "12345", "artgurvl@gmail.com", 1),
->("Lucas", "Melo", "254.657.812-11", "23456", "lcmelo@hotmail.com", 2),
->("Lucas", "Souza", "756.932.754-23", "45678", "luscassou@yahoo.com.br", 3),
->("Maria", "Antonia", "854.578.231-45", "89012", "antoniama@gmail.com", 1),
->("Vivian", "Marques", "765.907.235-78", "78653", "marquesvivi@hotmail.com", 2);