-- Схема БД для Собаседника (guru.qahacking.ru) — MySQL
-- Таблицы: products, users, carts

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL,
    badge TEXT
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE carts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
