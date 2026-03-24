-- O número 14 pq esse é o id dele 
INSERT INTO mensalidades (id_aluno, valor_mensalidade, data_vencimento, status_pagamento) 
VALUES (14, 850.00, '2026-04-10', 'Pendente');

SELECT * FROM mensalidades;

-- SELECT id_aluno, nome FROM alunos; (esse é o que faz a gente saber o id)