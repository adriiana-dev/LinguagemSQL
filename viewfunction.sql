--  DDL
--  Criar tabela de usuários
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    active BOOLEAN
);

--  Criar  VIEW de usuários ativos
CREATE OR REPLACE VIEW active_users_view AS
SELECT id, name, email
FROM users
WHERE active = TRUE;


-- DML 
-- Inserção de Dados
INSERT INTO users (name, email, active) VALUES 
('Ricardo Oliveira', 'ricardooliveira23@gmail.com', TRUE),
('Beatriz Souza', 'beatriz.souza2@gmail.com', TRUE),
('Carlos Eduardo', 'cadu.ti@desenvolvimento.com', FALSE),
('Mariana Costa', 'mariana.costa@gmail.com', TRUE);


-- PROCEDURE

CREATE OR REPLACE FUNCTION check_user_status(p_id INT) 
RETURNS TEXT AS $$
DECLARE
    v_status BOOLEAN;
BEGIN
    
    SELECT active INTO v_status 
    FROM users 
    WHERE id = p_id;

    
    IF v_status IS NULL THEN
        RETURN 'Usuário não encontrado';
    ELSIF v_status = TRUE THEN
        RETURN 'Usuário ativo';
    ELSE
        RETURN 'Usuário inativo';
    END IF;
END;
$$ LANGUAGE plpgsql;

