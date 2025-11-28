SELECT 
  b.Date AS order_date, 
  d.CategoryName AS category_name, 
  c.ProdName AS product_name, 
  c.Price AS product_price, 
  b.Quantity AS order_qty,
  (b.Quantity * c.Price) AS total_sales,
  a.CustomerEmail AS cust_email,
  a.CustomerCity AS cust_city
FROM `muamalat.Customers` AS a
JOIN `muamalat.Orders` AS b
  ON a.CustomerID = b.CustomerID
JOIN `muamalat.Products` AS c
  ON b.ProdNumber = c.ProdNumber
JOIN `muamalat.ProductCategory` AS d
  ON c.Category = d.CategoryID
ORDER BY b.Date ASC;
