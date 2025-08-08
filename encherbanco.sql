INSERT INTO turmas (nome_turma, ano_letivo) VALUES 
('Turma A', 2024),
('Turma B', 2024),
('Turma C', 2025),
('Turma D', 2024),
('Turma E', 2024);

INSERT INTO professores (nome_completo, cpf, rg, telefone, endereco, formacao, data_nascimento, email_professor)
VALUES 
('Ana Sophia Araújo', '43815092698', '087156234', '71 6379-4026', 'Rua das Acácias, 101', 'Matemática', '1984-03-17', 'ana.araujo@escola.com'),
('Emilly Ramos', '52981604333', '831752403', '(061) 0305-6413', 'Av. Brasil, 500', 'Física', '1965-10-14', 'emilly.ramos@escola.com'),
('Lucas Ferreira', '98765432100', 'MG3456789', '31 99999-1111', 'Rua 7, Centro', 'História', '1978-09-20', 'lucas.ferreira@escola.com'),
-- (adicione os demais 47 abaixo)
-- DICA: gere com ferramentas como [mockaroo.com](https://mockaroo.com/) ou peça aqui para eu gerar em partes.
;

-- Para associar alunos a turmas, usaremos ID de 1 a 5 (5 turmas)
INSERT INTO alunos (nome_completo, matricula, cpf, rg, data_nascimento, endereco, telefone, email_pessoal, turma_id)
VALUES 
('Pedro Silva', 'MAT001', '12345678901', 'MG1234567', '2008-03-15', 'Rua A, 123', '(31) 99999-0001', 'pedro.silva@email.com', 1),
('Mariana Costa', 'MAT002', '23456789012', 'MG2345678', '2009-05-22', 'Rua B, 456', '(31) 99999-0002', 'mariana.costa@email.com', 2),
('João Santos', 'MAT003', '34567890123', 'MG3456789', '2008-11-05', 'Rua C, 789', '(31) 99999-0003', 'joao.santos@email.com', 3),
-- (adicione os demais 47 abaixo)
;
