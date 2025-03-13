CREATE DATABASE IF NOT EXISTS avc_prediction;

-- Tabela principal: Pacientes
CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    pressao_arterial DECIMAL(5,2) NOT NULL,
    nivel_colesterol DECIMAL(5,2) NOT NULL,
    diabetes BOOLEAN NOT NULL,
    historico_familiar BOOLEAN NOT NULL,
    imc DECIMAL(5,2) NOT NULL
);

-- Tabela para Condições Médicas Preexistentes
CREATE TABLE condicoes_medicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela para relação entre Pacientes e Condições Médicas
CREATE TABLE paciente_condicao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    condicao_id INT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE,
    FOREIGN KEY (condicao_id) REFERENCES condicoes_medicas(id) ON DELETE CASCADE
);

-- Tabela para Hábitos de Vida
CREATE TABLE habitos_vida (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela para relação entre Pacientes e Hábitos de Vida
CREATE TABLE paciente_habito (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    habito_id INT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE,
    FOREIGN KEY (habito_id) REFERENCES habitos_vida(id) ON DELETE CASCADE
);
