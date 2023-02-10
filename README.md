# Projeto Individual módulo 4 - Resilia
<hr>

### A Proposta do projeto é modelar um banco de dados para o novo sistema da Resilia, que armazene seus cursos, turmas e alunos.
<br/>
<hr>

### Perguntas Propostas:
⇨ <b>Existem outras entidades além dessas três (Curso, turmas e alunos)?
<br>R: Neste banco possuem somente as três propostas, mas é possível pensar em um banco que possua além dessas três, a entidade professores e disciplinas, por exemplo.

⇨ <b>Quais os principais campos e tipos?
<br>R: create table cursos/ id int not null auto_increment/ nome_curso varchar(50)/ turno_curso varchar(50)/ carga_horaria int/ create table turmas/ nome_turma varchar(100)/ turno_turma varchar(15)/ foreign key(id_curso) references cursos(id)/ etc.

⇨ <b>Como essas entidades estão relacionadas?
<br>R: A entidade Curso estabelece relação 1:N (um para muitos) com a entidade Turmas.
<br> A entidade Alunos estabelce relação N:N (muitos para muitos) com a entidade Turmas.
<br>A entidade Alunos estabelece relação N:1 (muitos para um) com a entidade Curso.
<hr>

### Modelagem do banco:

![foto-atual](https://user-images.githubusercontent.com/112405656/217935918-46fb77b1-9d54-46aa-aebe-fa4e3faece2c.png)

