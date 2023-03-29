CREATE TABLE sloths (
  id SERIAL primary KEY,
  name TEXT,
  email TEXT,
  age INTEGER,
  creation TIMESTAMP
);


alter table sloths rename column name to username;


INSERT INTO sloths (name, email, age, created_at) VALUES ('Mt.Carmel', 'MtCaramel@gmail.com', 3346, CURRENT_TIMESTAMP);


update sloths set email = 'thisisnotarealemail@gmail.com' where id = 1;


SELECT id, username, email FROM sloths WHERE age < 40;


