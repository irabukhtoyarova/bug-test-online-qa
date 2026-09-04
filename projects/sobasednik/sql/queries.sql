-- SQL-запросы: Собаседник (guru.qahacking.ru)
-- Стенд: MySQL
-- Всего 7 запросов: WHERE, JOIN + WHERE, ORDER BY + LIMIT, LIKE, BETWEEN, GROUP BY + COUNT, LEFT JOIN

-- Q1: Товары «Нет в наличии» (проверка BR-01)
-- Приём: WHERE
SELECT name, stock 
FROM products 
WHERE stock = 0;
-- Result: 2 rows
-- name                           | stock
-- Право пушить в прод без тестов | 0
-- Наручки                        | 0

-- Q2: Корзина пользователя Анна — какие товары и сколько
-- Приём: JOIN 3 таблиц + WHERE
SELECT p.name AS product, c.quantity
FROM carts c
JOIN users u ON c.user_id = u.id
JOIN products p ON c.product_id = p.id
WHERE u.name = 'Анна'
ORDER BY p.name;
-- Result: 2 rows
-- product                        | quantity
-- Должность капитана звездолёта  | 2
-- Ещё немного поспать            | 1

-- Q3: Топ-3 самых дорогих товара
-- Приём: ORDER BY + LIMIT
SELECT name, price 
FROM products 
ORDER BY price DESC 
LIMIT 3;
-- Result: 3 rows
-- name                           | price
-- Должность капитана звездолёта  | 1500
-- Ещё немного поспать            | 1200
-- Продление дедлайна             | 1100

-- Q4: Поиск по названию «капитан»
-- Приём: LIKE
SELECT name 
FROM products 
WHERE name LIKE '%капитан%';
-- Result: 1 row
-- name
-- Должность капитана звездолёта

-- Q5: Товары в диапазоне цен 500–1100 ₽
-- Приём: BETWEEN
SELECT name, price 
FROM products 
WHERE price BETWEEN 500 AND 1100 
ORDER BY price;
-- Result: 4 rows
-- name                           | price
-- Чай для тестировщика           | 500
-- Наручки                        | 700
-- Право пушить в прод без тестов | 900
-- Продление дедлайна             | 1100

-- Q6: Сколько товаров с каждым бейджом
-- Приём: GROUP BY + COUNT
SELECT badge, COUNT(*) AS cnt 
FROM products 
GROUP BY badge;
-- Result: 3 rows
-- badge | cnt
-- NULL  | 3
-- New   | 1
-- Sale  | 2

-- Q7: Товары, которые никто не добавлял в корзину
-- Приём: LEFT JOIN + IS NULL (анти-join)
SELECT p.name FROM products p
LEFT JOIN carts c ON c.product_id = p.id
WHERE c.id IS NULL;
-- Result: 2 rows
-- name
-- Право пушить в прод без тестов
-- Наручки
