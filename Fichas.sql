USE escola_ficha;

-- Criando a tabela de Turmas
CREATE TABLE IF NOT EXISTS turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(50) NOT NULL, -- Ex: Berçário A, Maternal B
    id_professor INT,               -- Quem é o professor responsável?
    id_aluno INT,                   -- Qual aluno está nessa turma?
    horario VARCHAR(20),            -- Ex: 08:00 às 17:00
    
    -- Criando as ligações (Chaves Estrangeiras)
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

-- Vamos matricular o Enzo (ID 14) na turma da Profª Ana (ID 1)
-- IMPORTANTE: Verifique se os IDs 14 e 1 existem no seu banco!
INSERT INTO turmas (nome_turma, id_professor, id_aluno, horario) 
VALUES ('Berçário A', 1, 14, 'Integral');

-- Ver o resultado em formato de tabela
SELECT * FROM turmas;