-- which category is the most sold

SELECT products.product_category_name, 
		count(order_itens.product_id) AS "amount_of_products"
FROM order_itens INNER JOIN products ON products.product_id = order_itens.product_id
GROUP BY products.product_category_name
ORDER BY amount_of_products desc

