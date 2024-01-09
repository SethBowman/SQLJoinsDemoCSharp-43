-- INNER JOIN, products is the left table, sales is the right table
-- We will only see products that were sold

SELECT * FROM products
INNER JOIN sales
ON products.ProductID = sales.ProductID;

-- LEFT JOIN, since products is the left table we will see all products, but we will see null values if the product was not sold

SELECT * FROM products
LEFT JOIN sales
ON products.ProductID = sales.ProductID;

-- INNER JOIN, employees is the left table, sales is the right table

SELECT * FROM employees
INNER JOIN sales
ON employees.EmployeeID = sales.EmployeeID;

-- LEFT JOIN, since employees is the left table we will see all employees even if they didn't make a sale
-- null values will appear on the right table if that employee has no sales data

SELECT * FROM employees as e
LEFT JOIN sales as s
ON e.EmployeeID = s.EmployeeID;

-- using multiple joins

SELECT products.Name as "Product Sold", products.Price, sales.Quantity as "Amount Sold", employees.FirstName, employees.LastName from products
INNER JOIN sales
ON products.ProductId = sales.ProductID
INNER JOIN employees
ON sales.EmployeeID = employees.EmployeeID;




