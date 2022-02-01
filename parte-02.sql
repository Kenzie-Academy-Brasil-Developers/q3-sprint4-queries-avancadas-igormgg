INSERT INTO endereços
    (rua, país, cidade)
VALUES
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');

INSERT INTO usuarios
    (nome, email, senha, endereco_id)
VALUES
    ('Cauan', 'cauan@exemple.com', '1234', (SELECT id FROM endereços WHERE rua LIKE '%Paulista' AND cidade = 'São Paulo')),
    ('Chrystian', 'chrystian@exemple.com', '4321', (SELECT id FROM endereços WHERE rua LIKE '%Marcelino%' AND cidade = 'Curitiba')),
    ('Matheus', 'matheus@exemple.com', '3214',  (SELECT id FROM endereços WHERE rua LIKE '%Higienópolis' AND cidade = 'Londrina'));

INSERT INTO redes_sociais
    (nome)
VALUES
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');

INSERT INTO usuario_redes_sociais
    (usuario_id, rede_social_id)
VALUES
    ((SELECT id FROM usuarios WHERE nome = 'Cauan'), (SELECT id FROM redes_sociais WHERE nome = 'Youtube')),
    ((SELECT id FROM usuarios WHERE nome = 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome = 'Youtube')),
    ((SELECT id FROM usuarios WHERE nome = 'Matheus'), (SELECT id FROM redes_sociais WHERE nome = 'Youtube')),
    ((SELECT id FROM usuarios WHERE nome = 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome = 'Twitter')),
    ((SELECT id FROM usuarios WHERE nome = 'Cauan'), (SELECT id FROM redes_sociais WHERE nome = 'Twitter')),
    ((SELECT id FROM usuarios WHERE nome = 'Matheus'), (SELECT id FROM redes_sociais WHERE nome = 'Instagram')),
    ((SELECT id FROM usuarios WHERE nome = 'Matheus'), (SELECT id FROM redes_sociais WHERE nome = 'Facebook')),
    ((SELECT id FROM usuarios WHERE nome = 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome = 'Instagram')),
    ((SELECT id FROM usuarios WHERE nome = 'Cauan'), (SELECT id FROM redes_sociais WHERE nome = 'TikTok'));