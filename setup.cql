# Drop old keyspace if exists
DROP KEYSPACE IF EXISTS dolezjo3;

# For class purpose, I have decided to use replication factor with value 1,
# in production strategy, I would use bigger value
CREATE KEYSPACE dolezjo3 WITH replication = {'class':'SimpleStrategy','replication_factor':1};

# Set created keyspace as current keyspace
USE dolezjo3;

# Create keyspace structure

CREATE TABLE orders (
  id int PRIMARY KEY,
  code text,
  buyer_id text,
  created_at text,
  payed_at text,
  buyer_ip text
 );

CREATE TABLE order_items (
  id int PRIMARY KEY,
  order_id int,
  buyer_id int,
  goods_id int,
  goods_number int,
  shop_price double,
  goods_price double,
  goods_amount double
);

# Insert data

COPY orders FROM src/OS_ORDERS.csv
COPY order_itmes FROM src/OS_ORDERS_IMTEMS.csv
