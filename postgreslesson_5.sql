CREATE TABLE sloths (
  id SERIAL primary KEY,
  name TEXT,
  email TEXT,
  age INTEGER,
  creation TIMESTAMP
);


alter table sloths rename column name to username;


INSERT INTO sloths (username, email, age, created_at) VALUES ('Mt.Carmel', 'MtCaramel@gmail.com', 3346, CURRENT_TIMESTAMP);


update sloths set email = 'thisisnotarealemail@gmail.com' where id = 1;


SELECT id, username, email FROM sloths WHERE age < 40;

ALTER TABLE orders
ADD COLUMN user_id integer references sloths(id)


CREATE TABLE orders(
  id SERIAL primary KEY,
  product text,
  email TEXT,
  age INTEGER,
  creation TIMESTAMP
);

SELECT orders.id, orders.product, orders.email, orders.age, orders.creation
FROM orders 
JOIN sloths ON orders.user_id = sloths.id
WHERE sloths.id = 1;



