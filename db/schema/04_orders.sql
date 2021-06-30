DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  created_at TIMESTAMP NOT NULL,
  finished_at TIMESTAMP,
  instructions TEXT,
  dish_id INTEGER REFERENCES dishes(id) ON DELETE CASCADE,
  customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE  
);
