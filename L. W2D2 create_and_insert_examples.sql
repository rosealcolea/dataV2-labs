CREATE TABLE IF NOT EXISTS cars (
  car_id      INT AUTO_INCREMENT PRIMARY KEY,
  make        VARCHAR(30),
  model       VARCHAR(30),
  year        INT,
  engine      VARCHAR(20),
  description VARCHAR(1000),
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO publications.stores_sales_summary
VALUES (3427, 'Borders Bookstore', 2, 6, 180)

# to deal with AUTOINCREMENT - we can also name the fields
INSERT INTO cars  -- Btw., this is also a comment, until the end of the line
VALUES (make='Tesla', model='Y',year=2019,engine='electric', description='Nice!');

/* to create multiple line comments we start with a slash and an asterisk,
then have our comment,
and some more,
until we end with a asterisk and comment, conventionally on a line by itself, like this
*/
