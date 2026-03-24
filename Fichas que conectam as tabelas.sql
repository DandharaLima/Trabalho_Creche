-- 1. SELECIONA O BANCO DE DADOS
USE escola_ficha;

-- 2. CRIAÇÃO DA TABELA DE DESEMPENHO (BOLETIM)
-- Esta tabela é o núcleo do Módulo Acadêmico, unindo Alunos e Turmas.
CREATE TABLE IF NOT EXISTS desempenho_academico (
    id_desempenho INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do registro (RG da nota)
    id_aluno INT,                                 -- Chave Estrangeira: liga ao aluno específico
    id_turma INT,                                 -- Chave Estrangeira: liga à turma do aluno
    bimestre INT NOT NULL,                        -- Define o período letivo (1 a 4)
    nota DECIMAL(4,2),                            -- Valor da nota (Ex: 10.00). Ideal para cálculos de média.
    faltas INT DEFAULT 0,                         -- Contador de faltas. Inicia em 0 se não for preenchido.
    observacoes TEXT,                             -- Espaço para o professor relatar dificuldades ou evoluções.
    
    -- REGRAS DE INTEGRIDADE (RELACIONAMENTOS)
    -- Garante que não existam notas para alunos ou turmas que não estão cadastrados.
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- 3. EXEMPLO DE INSERÇÃO DE DADOS (POVOAMENTO)
-- Aqui cadastramos o desempenho do Enzo (ID 14) na Turma do Berçário (ID 1)
INSERT INTO desempenho_academico (id_aluno, id_turma, bimestre, nota, faltas, observacoes)
VALUES (14, 1, 1, 9.5, 2, 'O aluno demonstra excelente coordenação motora.');

-- 4. COMANDO DE CONSULTA (RELATÓRIO)
-- Exibe a tabela preenchida em formato de grade (Result Grid).
SELECT * FROM desempenho_academico;

-- 5. QUERY DE INTELIGÊNCIA (PREVENÇÃO DE EVASÃO)
-- Este comando filtra alunos com baixo rendimento ou muitas faltas,
-- cumprindo o requisito de "Prever a Evasão" do manual do SisGESC.
SELECT 
    id_aluno AS 'ID do Aluno', 
    nota AS 'Nota Atual', 
    faltas AS 'Total de Faltas'
FROM desempenho_academico
WHERE nota < 6.0 OR faltas > 5;
-- Ver o resultado em formato de tabela
SELECT * FROM turmas;