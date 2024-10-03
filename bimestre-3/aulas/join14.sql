# Liste os nomes de todos os alunos e seus respectivos cursos
select a.nome as nomealuno, c.nome as nomecurso from aluno a
inner join curso c on a.FK_curso_id = c.id;

# Liste os nomes de todos os professores e as disciplinas que eles ministram
select p.nome as nomeprof, d.nome as nomedisci from professor p
inner join disciplina d on 
p.siape = d.FK_prof_siape order by p.nome;

#Liste todas as disciplinas do curso de "Ciência da Computação"
select d.nome as nomedisciplina  from disciplina d
inner join cursodisciplina cd on d.id = cd.FK_disciplina_id
inner join curso c on cd.FK_curso_id = c.id
where c.nome = "Ciência da Computação";

#Quais as disciplinas que o aluno "João Silva" cursa
select d.nome as nomedisciplina from disciplina d 
inner join alunodisciplina ad on d.id = ad.FK_disciplina_id
inner join aluno a on ad.FK_aluno_mat = a.mat
where a.nome = "João Silva";

# Liste os nomes de todos os alunos e a nota mais alta que eles obtiveram em qualquer disciplina

# Liste todas as disciplinas que têm alunos matriculados, mostrando o nome da disciplina e a quantidade de alunos matriculados em cada uma

# DESAFIO!!
# Encontra os alunos matriculados nas disciplinas ministradas por um professor cujo e-mail é