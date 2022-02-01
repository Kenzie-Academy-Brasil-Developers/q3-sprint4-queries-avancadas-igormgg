DROP TABLE IF EXISTS usuario_redes_sociais;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS endereços;
DROP TABLE IF EXISTS redes_sociais;

CREATE TABLE IF NOT EXISTS redes_sociais (
    id              BIGSERIAL       PRIMARY KEY,
    nome            VARCHAR(150)    NOT NULL        UNIQUE
);

CREATE TABLE IF NOT EXISTS endereços (
    id              BIGSERIAL       PRIMARY KEY,
    rua             VARCHAR         NOT NULL,
    país            VARCHAR(100)    NOT NULL,
    cidade          VARCHAR(100)    NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios (
    id              BIGSERIAL       PRIMARY KEY,
    nome            VARCHAR(100),
    email           VARCHAR         NOT NULL        UNIQUE,
    senha           VARCHAR         NOT NULL,
    endereco_id     INTEGER         NOT NULL,
    FOREIGN KEY (endereco_id)       REFERENCES endereços("id")
);

CREATE TABLE IF NOT EXISTS usuario_redes_sociais (
    id              BIGSERIAL       PRIMARY KEY,
    usuario_id      INTEGER         NOT NULL,
    rede_social_id  INTEGER         NOT NULL,
    FOREIGN KEY (usuario_id)        REFERENCES usuarios("id"),
    FOREIGN KEY (rede_social_id)    REFERENCES redes_sociais("id")
);
