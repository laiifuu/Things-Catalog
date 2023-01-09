CREATE TABLE book (
	id SERIAL PRIMARY KEY,
	   publisher VARCHAR(100),
	cover_state VARCHAR(100)
);

CREATE TABLE label (
 	id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	color VARCHAR(100)
);

CREATE TABLE games (
	id serial PRIMARY KEY,
	multiplayer VARCHAR(255),
	last_played_at: DATE,
	publish_date DATE,
	archived Boolean
);

CREATE TABLE authors (
	id serial PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255)
);