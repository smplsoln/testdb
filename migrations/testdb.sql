CREATE TABLE users (
  id INTEGER PRIMARY KEY
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY, -- number
  name VARCHAR(255), -- string
  birth_year SMALLINT, -- smaller number
  member_since TIMESTAMP -- time stamp
);

ALTER TABLE users
ADD COLUMN name VARCHAR(255);

ALTER TABLE users
ADD COLUMN birth_year SMALLINT;

ALTER TABLE users
ADD COLUMN member_since VARCHAR(255);


DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  birth_year SMALLINT NOT NULL,
  member_since TIMESTAMP NOT NULL
);


INSERT INTO users (id, name, birth_year, member_since)
VALUES (1, 'Susan Hudson', 2000, Now());

CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  birth_year SMALLINT NOT NULL,
  member_since TIMESTAMP NOT NULL DEFAULT Now()
);

ALTER TABLE users
ALTER COLUMN member_since
SET DEFAULT Now();

INSERT INTO users (id, name, birth_year)
VALUES (2, 'Malloy Jenkins', 1000);

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  birth_year SMALLINT NOT NULL,
  member_since TIMESTAMP NOT NULL DEFAULT Now()
);

INSERT INTO users (name, birth_year)
VALUES ('Susan Hudson', 2000),
('Malloy Jenkins', 1000);

CREATE TABLE pets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

DROP TABLE pets CASCADE;

CREATE TABLE pets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER NOT NULL REFERENCES users(id)
);

INSERT INTO pets (name, owner_id)
VALUES ('mittens', 1);

INSERT INTO pets (name, owner_id)
VALUES ('fluffy', 99);

DELETE FROM users WHERE id = 1;

