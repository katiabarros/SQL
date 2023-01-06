-- this consult will see wether a table exist or not and create it in case it doesn`t exist. The data was downloaded 
-- from Kaggle "https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce" from an e-commerce. 

CREATE TABLE IF NOT EXISTS orders (order_id VARCHAR(50),
customer_id VARCHAR(50),
order_status VARCHAR(50),
order_purchase_timestamp TIMESTAMP,
order_approved_at TIMESTAMP,
order_delivered_carrier_date TIMESTAMP,
order_delivered_customer_date TIMESTAMP,
order_estimated_delivery_date TIMESTAMP);

COPY orders
FROM 'C:\Users\Katita\SQL\olist_orders_dataset.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE IF NOT EXISTS order_itens (order_id VARCHAR(50),
										order_item_id INT,
										product_id VARCHAR(50),
										seller_id VARCHAR(50),
										shipping_limit_date TIMESTAMP,
										price REAL,
										freight_value REAL);
										
COPY order_itens
FROM 'C:\Users\Katita\SQL\olist_order_items_dataset.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE IF NOT EXISTS payments (order_id VARCHAR(50),
									 payment_sequential INT,
									 payment_type VARCHAR(20),
									 payment_installments REAL,
									 payment_value REAL);
								
COPY payments
FROM 'C:\Users\Katita\SQL\olist_order_payments_dataset.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE IF NOT EXISTS products (product_id VARCHAR(50),
									 product_category_name VARCHAR(50),
									 product_name_lenght INT,
									 product_description_lenght INT,
									 product_photos_qty INT,
									 product_weight_g INT,
									 product_length_cm INT,
									 product_height_cm INT,
									 product_width_cm INT);
									 
COPY products
FROM 'C:\Users\Katita\SQL\olist_products_dataset.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE IF NOT EXISTS customers (customer_id VARCHAR(50),
									  customer_unique_id VARCHAR(50),
									  customer_zip_code_prefix INT,
									  customer_city VARCHAR(50),
									  customer_state VARCHAR(2));
									  
COPY customers
FROM 'C:\Users\Katita\SQL\olist_customers_dataset.csv' 
DELIMITER ',' 
CSV HEADER;
