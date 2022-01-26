CREATE TABLE Label (
  id SERIAL,
  title TEXT NOT NULL,
  color TEXT NOT NULL,
  PRIMARY KEY (id)
)


CREATE TABLE Book (
  id SERIAL,
  publish_date DATE,
  archived BOOLEAN,
  genre_id INTEGER,
  label_id INTEGER,
  PRIMARY KEY (id),
)


ALTER TABLE Book ADD CONSTRAINT genre FOREIGN KEY (genre_id) REFERENCES Genre (id);
ALTER TABLE Book ADD CONSTRAINT label FOREIGN KEY (label_id) REFERENCES Label (id);
