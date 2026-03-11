-- 1. Total de vendas e lucro por ano
SELECT 
    strftime('%Y', "Order Date") AS ano,
    ROUND(SUM(Sales), 2) AS total_vendas,
    ROUND(SUM(Profit), 2) AS total_lucro
FROM sales_data
GROUP BY ano
ORDER BY ano;

-- 2. Produtos mais lucrativos
SELECT 
    "Product Name",
    ROUND(SUM(Profit), 2) AS total_lucro
FROM sales_data
GROUP BY "Product Name"
ORDER BY total_lucro DESC
LIMIT 10;

-- 3. Categoria com mais receita
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS total_vendas
FROM sales_data
GROUP BY Category
ORDER BY total_vendas DESC;

-- 4. Região com mais vendas
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS total_vendas
FROM sales_data
GROUP BY Region
ORDER BY total_vendas DESC;

-- 5. Segmento de cliente que compra mais
SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS total_vendas
FROM sales_data
GROUP BY Segment
ORDER BY total_vendas DESC;

-- 6. Tempo médio de entrega
SELECT 
    ROUND(AVG("Delivery Time"), 2) AS tempo_medio_entrega
FROM sales_data;