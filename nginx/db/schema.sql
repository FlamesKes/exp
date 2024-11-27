CREATE USER main_user WITH PASSWORD 'StrongPa$$1Word';

GRANT CONNECT ON DATABASE main TO main_user;

GRANT USAGE ON SCHEMA public TO main_user;

GRANT ALL PRIVILEGES ON DATABASE main TO main_user;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(40) NOT NULL,
    password VARCHAR(40) NOT NULL
);

CREATE TABLE information (
    id SERIAL PRIMARY KEY,
    column1 VARCHAR(200) NOT NULL,
    column2 VARCHAR(200) NOT NULL,
    column3 VARCHAR(200) NOT NULL
);

INSERT INTO users (username, password)
VALUES
('baka', '1234'),
('pt', '4321');

INSERT INTO information (column1, column2, column3)
VALUES
('baka', 'cool', 'dude'),
('lol', 'kek', 'meme');

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE users TO main_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE information TO main_user;