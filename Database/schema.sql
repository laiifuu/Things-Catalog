CREATE TABLE book (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	publisher VARCHAR(100),
	cover_state VARCHAR(100)
	publish_date  DATE
	archived Boolean
	genre_id INT REFERENCES genre(id),
  	author_id INT REFERENCES author(id),
  	source_id INT REFERENCES source(id), 
  	label_id INT REFERENCES label(id),

);


CREATE TABLE label (
 	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	title VARCHAR(100),
	color VARCHAR(100)
);