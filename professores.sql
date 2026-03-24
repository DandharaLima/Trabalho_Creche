USE escola_ficha;

-- Criando a tabela de professores
CREATE TABLE IF NOT EXISTS professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_professor VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    especialidade ENUM('Berçarista', 'Pedagogo', 'Auxiliar', 'Recreador') NOT NULL,
    contato VARCHAR(15),
    data_admissao DATE
);

-- Inserindo alguns professores para a creche
INSERT IGNORE INTO professores (nome_professor, cpf, especialidade, contato, data_admissao) VALUES 
('Ana Souza', '12345678901', 'Berçarista', '11911112222', '2024-01-15'),
('Carlos Lima', '98765432100', 'Pedagogo', '11933334444', '2023-05-20'),
('Luciana Dias', '45678912300', 'Auxiliar', '11955556666', '2024-02-10');

-- Ver o resultado em formato de tabela
SELECT * FROM professores;