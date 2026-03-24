CREATE DATABASE IF NOT EXISTS escola_ficha;
USE escola_ficha;

-- Recriando a tabela que sumiu no DROP
CREATE TABLE IF NOT EXISTS alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE,
    nome_responsavel VARCHAR(100) NOT NULL,
    cpf_responsavel VARCHAR(11) NOT NULL,
    contato_emergencia VARCHAR(15),
    periodo ENUM('Manhã', 'Tarde', 'Integral') DEFAULT 'Integral',
    status_academico ENUM('Ativo', 'Trancado', 'Evadido') DEFAULT 'Ativo'
);

-- Inserindo os dados (IGNORE evita erro se você rodar duas vezes)
INSERT IGNORE INTO alunos (nome, cpf, data_nascimento, nome_responsavel, cpf_responsavel, contato_emergencia, periodo, status_academico) VALUES 
('Enzo Rocha', '11122233344', '2023-05-10', 'Mariana Rocha', '99988877766', '11988887777', 'Integral', 'Ativo'),
('Valentina Lima', '22233344455', '2022-11-20', 'Roberto Lima', '44455566600', '11977776666', 'Manhã', 'Ativo'),
('Theo Silva', '33344455566', '2024-01-15', 'Ana Silva', '22211100099', '11911112222', 'Tarde', 'Ativo');

-- MOSTRANDO EM ESTILO TABELA
SELECT * FROM alunos;