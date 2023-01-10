CREATE TABLE author {
   id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
   first_name VARCHAR, 
   last_name VARCHAR
}

CREATE TABLE game {
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
  archived BOOLEAN,
  multiplayer BOOLEAN,
  publish_date DATE, 
  last_played_at DATE, 
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  source_id INT REFERENCES source(id), 
  label_id INT REFERENCES label(id)
}