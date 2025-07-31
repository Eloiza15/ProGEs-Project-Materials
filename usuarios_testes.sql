USE sistema_escolar_proges;

INSERT INTO usuarios (nome_usuario, email, senha, tipo_usuario)
VALUES ('gestor.eloiza', 'eloiza@escola.com', SHA2('senha123', 256), 'gestor');

SELECT LAST_INSERT_ID();

INSERT INTO gestores (
    id_gestor,
    nome_completo,
    cpf,
    rg,
    telefone,
    endereco,
    formacao,
    data_nascimento
) VALUES (
    1,
    'Eloiza Simões',
    '12345678901',
    'MG1234567',
    '(31) 99999-0000',
    'Rua das Flores, 123',
    'Pedagogia',
    '1985-07-20'
);

INSERT INTO usuarios (nome_usuario, email, senha, tipo_usuario)
VALUES ('professor.pedro', 'pedro@escola.com', SHA2('senha123', 256), 'professor');

SELECT LAST_INSERT_ID();

INSERT INTO professores (
    id_professor,
    nome_completo,
    cpf,
    rg,
    telefone,
    endereco,
    formacao,
    data_nascimento
) VALUES (
    2,
    'Pedro Ryan',
    '12312312399',
    'MG1231231',
    '(31) 97777-6666',
    'Av. Central, 123',
    'Licenciatura em Matemática',
    '1980-12-01'
);

INSERT INTO turmas (nome_turma, horario, ano_letivo)
VALUES ('301', '07:00 às 12:00', 2025);

SELECT LAST_INSERT_ID();

INSERT INTO usuarios (nome_usuario, email, senha, tipo_usuario)
VALUES ('aluno.geovane', 'geovane@escola.com', SHA2('senha123', 256), 'aluno');

SELECT LAST_INSERT_ID();

INSERT INTO alunos (
    id_aluno,
    nome_completo,
    matricula,
    cpf,
    rg,
    data_nascimento,
    endereco,
    telefone,
    email_pessoal,
    turma_id
) VALUES (
    3,
    'Geovane Armanelli',
    '2025001',
    '98765432100',
    'MG9876543',
    '2005-04-15',
    'Rua das Palmeiras, 45',
    '(31) 98888-7777',
    'luiz.pessoal@gmail.com',
    1
);


