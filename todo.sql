CREATE DATABASE todolist;

\CONNECT todolist

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR,
  priority INT NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Buy Groceries', 'Get food for the week at TJs', 2, '2017-6-27 13:00:00');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Shower', 'Use hot water AND soap this time', 5, '2017-6-27 13:00:00');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Fix Bike', 'Rotate tires and clean chain', 4, '2017-6-27 13:00:00');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Oil Change', 'Use 0w30 and remember oil pan', 3, '2017-6-27 13:00:00');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Turn off oven', 'Do this to avoid burning the house down', 1, '2017-6-27 13:00:00', '2017-6-27 13:48:00');

SELECT * from todos WHERE completed_at = NULL;
SELECT * from todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-6-27 13:54:00' WHERE id = 1;
-- NEED TO ADDRESS: id field kept changing, not sure why

DELETE from todos WHERE completed_at IS NOT NULL;
