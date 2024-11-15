CREATE DATABASE IF NOT EXISTS `itbkk_shared`;

USE `itbkk_shared`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    oid VARCHAR(50) NOT NULL,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    role ENUM('LECTURER', 'STAFF', 'STUDENT') NOT NULL,
    PRIMARY KEY (oid),
    UNIQUE KEY (username, email)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

commit;
