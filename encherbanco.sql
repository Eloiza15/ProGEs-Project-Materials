USE sistema_escolar_proges;

-- Inserção de usuários
INSERT INTO usuarios (nome_usuario, email, senha, tipo_usuario) VALUES
('eloiza', 'eloiza@escola.com', 'senha123', 'gestor'),
('prof.joao', 'joao@escola.com', 'senha123', 'professor'),
('prof.maria', 'maria@escola.com', 'senha123', 'professor'),
('prof.pedro', 'pedro@escola.com', 'senha123', 'professor');

-- Inserção do gestor (Eloiza)
INSERT INTO gestores (id_gestor, nome_completo, cpf, rg, telefone, endereco, formacao, data_nascimento) VALUES
(1, 'Eloiza Simões Fernandes', '11122233344', 'MG123456', '(31)99999-0000', 'Rua Central, 100', 'Gestão Escolar', '1988-03-10');

-- Inserção dos professores
INSERT INTO professores (nome_completo, cpf, rg, telefone, endereco, formacao, data_nascimento, email_professor) VALUES
('João Souza', '1234567890123456', 'MG223344', '(31)91234-5678', 'Av. Brasil, 1000', 'Matemática', '1985-09-15', 'joao@escola.com'),
('Maria Oliveira', '2345678901234567', 'MG334455', '(31)92345-6789', 'Rua da Paz, 456', 'Português', '1982-07-10', 'maria@escola.com'),
('Pedro Santos', '3456789012345678', 'MG445566', '(31)93456-7890', 'Rua Nova, 789', 'História', '1987-02-05', 'pedro@escola.com');

-- Inserção de turmas
INSERT INTO turmas (nome_turma, ano_letivo) VALUES
('1º Ano A', 2025),
('2º Ano B', 2025),
('3º Ano C', 2025);

-- Inserção de alunos
INSERT INTO alunos (nome_completo, matricula, cpf, rg, data_nascimento, endereco, telefone, email_pessoal, turma_id) VALUES
('Ana Lima', 'A2025001', '12345678900', 'MG987654', '2010-03-15', 'Rua Verde, 50', '(31)93456-1234', 'ana@gmail.com', 1),
('Bruno Costa', 'A2025002', '23456789000', 'MG876543', '2010-05-20', 'Av. Azul, 60', '(31)94567-2345', 'bruno@gmail.com', 1),
('Carla Mendes', 'A2025003', '34567890100', 'MG765432', '2009-11-25', 'Rua Amarela, 70', '(31)95678-3456', 'carla@gmail.com', 2),
('Diego Nunes', 'A2025004', '45678901200', 'MG654321', '2009-09-30', 'Av. Roxa, 80', '(31)96789-4567', 'diego@gmail.com', 2),
('Eduarda Silva', 'A2025005', '56789012300', 'MG543210', '2008-12-10', 'Rua Cinza, 90', '(31)97890-5678', 'eduarda@gmail.com', 3),
('Fábio Rocha', 'A2025006', '67890123400', 'MG432109', '2008-10-01', 'Av. Laranja, 100', '(31)98901-6789', 'fabio@gmail.com', 3);

-- Inserção de responsáveis
INSERT INTO responsaveis (id_aluno, nome_completo, cpf, rg, telefone, email, grau_parentesco, endereco) VALUES
(1, 'Marina Lima', '32165498700', 'MG888888', '(31)99876-1234', 'marina@gmail.com', 'Mãe', 'Rua Verde, 50'),
(2, 'Carlos Costa', '43216549870', 'MG777777', '(31)98765-2345', 'carlos@gmail.com', 'Pai', 'Av. Azul, 60'),
(3, 'Luciana Mendes', '54321654987', 'MG666666', '(31)97654-3456', 'luciana@gmail.com', 'Mãe', 'Rua Amarela, 70'),
(4, 'Fabiana Nunes', '65432165498', 'MG555555', '(31)96543-4567', 'fabiana@gmail.com', 'Mãe', 'Av. Roxa, 80'),
(5, 'Patrícia Silva', '76543216549', 'MG444444', '(31)95432-5678', 'patricia@gmail.com', 'Mãe', 'Rua Cinza, 90'),
(6, 'João Rocha', '87654321654', 'MG333333', '(31)94321-6789', 'joao@gmail.com', 'Pai', 'Av. Laranja, 100');

-- Inserção de disciplinas
INSERT INTO disciplinas (nome_disciplina) VALUES
('Matemática'),
('Português'),
('História'),
('Ciências');

-- Relacionamento turma-professor-disciplina
INSERT INTO turma_professor_disciplina (id_turma, id_professor, id_disciplina) VALUES
(1, 1, 1),  -- João - Matemática - 1º Ano
(1, 2, 2),  -- Maria - Português - 1º Ano
(2, 1, 1),  -- João - Matemática - 2º Ano
(2, 2, 2),  -- Maria - Português - 2º Ano
(3, 3, 3),  -- Pedro - História - 3º Ano
(3, 1, 1);  -- João - Matemática - 3º Ano

-- Notas dos alunos
INSERT INTO notas (id_aluno, id_disciplina, bimestre, valor) VALUES
(1, 1, 1, 8.5),
(1, 2, 1, 9.0),
(2, 1, 1, 7.5),
(2, 2, 1, 8.0),
(3, 1, 1, 6.5),
(3, 2, 1, 7.0),
(4, 1, 1, 9.0),
(4, 2, 1, 8.5),
(5, 1, 1, 9.2),
(5, 3, 1, 8.8),
(6, 1, 1, 7.5),
(6, 3, 1, 9.0);

-- Frequência dos alunos
INSERT INTO frequencias (id_aluno, id_disciplina, data, presente) VALUES
(1, 1, '2025-08-01', TRUE),
(1, 2, '2025-08-01', TRUE),
(2, 1, '2025-08-01', FALSE),
(2, 2, '2025-08-01', TRUE),
(3, 1, '2025-08-01', TRUE),
(4, 2, '2025-08-01', TRUE),
(5, 3, '2025-08-01', TRUE),
(6, 3, '2025-08-01', TRUE);

-- Avisos
INSERT INTO avisos (titulo, descricao, data_envio) VALUES
('Reunião de Pais', 'A reunião acontecerá no dia 15 de agosto às 18h.', NOW()),
('Avaliações Bimestrais', 'As avaliações começam em 22 de agosto.', NOW());

-- Cardápio semanal
INSERT INTO cardapios (segunda, terca, quarta, quinta, sexta) VALUES
('Arroz, feijão e frango', 'Macarrão e carne moída', 'Arroz, feijão e ovo', 'Feijoada', 'Arroz, feijão e peixe');

-- Horário escolar
INSERT INTO horarios (id_turma, dia_semana, ordem_aula, disciplina, professor) VALUES
(1, 'Segunda-feira', 1, 'Matemática', 'João Souza'),
(1, 'Segunda-feira', 2, 'Português', 'Maria Oliveira'),
(2, 'Terça-feira', 1, 'Matemática', 'João Souza'),
(2, 'Terça-feira', 2, 'Português', 'Maria Oliveira'),
(3, 'Quarta-feira', 1, 'História', 'Pedro Santos'),
(3, 'Quarta-feira', 2, 'Matemática', 'João Souza');
