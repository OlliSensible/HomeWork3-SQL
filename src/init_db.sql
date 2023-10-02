---------------------------------------------
---------Task #1 - Design a Database---------
---------------------------------------------

CREATE DATABASE IF NOT EXISTS megasoftDB;
USE megasoftDB;

CREATE TABLE IF NOT EXISTS worker (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(1000) NOT NULL,
    birthday DATE,
    level VARCHAR(10) NOT NULL,
    salary INT,
    CONSTRAINT CK_worker_name_length CHECK (LENGTH(name) >= 2),
    CONSTRAINT CK_birthday_year CHECK (YEAR(birthday) > '1900'),
    CONSTRAINT CK_level CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    CONSTRAINT CK_salary CHECK (salary >= 100 AND salary <= 100000)
);

CREATE TABLE IF NOT EXISTS client (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(1000) NOT NULL,
    CONSTRAINT CK_client_name_length CHECK (LENGTH(name) >= 2)
);

CREATE TABLE IF NOT EXISTS project (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    client_id BIGINT NOT NULL,
    start_date DATE,
    finish_date DATE,
    FOREIGN KEY (client_id) REFERENCES client (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT CK_date CHECK (start_date < finish_date)
);

CREATE TABLE IF NOT EXISTS project_worker (
    project_id BIGINT NOT NULL,
    worker_id BIGINT NOT NULL,
    PRIMARY KEY (project_id, worker_id),
    FOREIGN KEY (project_id) REFERENCES project (id),
    FOREIGN KEY (worker_id) REFERENCES worker (id)
);