-- Inserting 10 products
INSERT INTO PRODUCT (id, name, price, description, thumbnail) VALUES
(1, 'Product 1', 19.99, 'Description for Product 1', 'https://via.placeholder.com/150'),
(2, 'Product 2', 29.99, 'Description for Product 2', 'https://via.placeholder.com/200'),
(3, 'Product 3', 39.99, 'Description for Product 3', 'https://via.placeholder.com/250'),
(4, 'Product 4', 49.99, 'Description for Product 4', 'https://via.placeholder.com/300'),
(5, 'Product 5', 59.99, 'Description for Product 5', 'https://via.placeholder.com/350'),
(6, 'Product 6', 69.99, 'Description for Product 6', 'https://via.placeholder.com/400'),
(7, 'Product 7', 79.99, 'Description for Product 7', 'https://via.placeholder.com/450'),
(8, 'Product 8', 89.99, 'Description for Product 8', 'https://via.placeholder.com/500'),
(9, 'Product 9', 99.99, 'Description for Product 9', 'https://via.placeholder.com/550'),
(10, 'Product 10', 109.99, 'Description for Product 10', 'https://via.placeholder.com/600');

-- Inserting 3 comments for each product
INSERT INTO COMMENT (id, author, date, text, productid) VALUES
-- Comments for Product 1
(1, 'User1', '2024-01-08', 'Great product!', 1),
(2, 'User2', '2024-01-09', 'I love it!', 1),
(3, 'User3', '2024-01-10', 'Highly recommended.', 1),

-- Comments for Product 2
(4, 'User4', '2024-01-08', 'Good value for money.', 2),
(5, 'User5', '2024-01-09', 'Awesome product!', 2),
(6, 'User6', '2024-01-10', 'Would buy again.', 2),

-- Comments for Product 3
(7, 'User7', '2024-01-08', 'Excellent quality.', 3),
(8, 'User8', '2024-01-09', 'Impressed with the features.', 3),
(9, 'User9', '2024-01-10', 'Fast shipping.', 3),

-- Comments for Product 4
(10, 'User10', '2024-01-08', 'Satisfied customer.', 4),
(11, 'User11', '2024-01-09', 'Exactly as described.', 4),
(12, 'User12', '2024-01-10', 'Great purchase!', 4),

-- Comments for Product 5
(13, 'User13', '2024-01-08', 'Nice design.', 5),
(14, 'User14', '2024-01-09', 'Good packaging.', 5),
(15, 'User15', '2024-01-10', 'Impressive performance.', 5),

-- Comments for Product 6
(16, 'User16', '2024-01-08', 'Met my expectations.', 6),
(17, 'User17', '2024-01-09', 'Solid build quality.', 6),
(18, 'User18', '2024-01-10', 'Happy with the purchase.', 6),

-- Comments for Product 7
(19, 'User19', '2024-01-08', 'Perfect for my needs.', 7),
(20, 'User20', '2024-01-09', 'Fast delivery.', 7),
(21, 'User21', '2024-01-10', 'Value for money.', 7),

-- Comments for Product 8
(22, 'User22', '2024-01-08', 'Impressed with the service.', 8),
(23, 'User23', '2024-01-09', 'Great customer support.', 8),
(24, 'User24', '2024-01-10', 'Would recommend.', 8),

-- Comments for Product 9
(25, 'User25', '2024-01-08', 'Awesome product.', 9),
(26, 'User26', '2024-01-09', 'Highly satisfied.', 9),
(27, 'User27', '2024-01-10', 'Exactly what I needed.', 9),

-- Comments for Product 10
(28, 'User28', '2024-01-08', 'Top-notch quality.', 10),
(29, 'User29', '2024-01-09', 'Great value.', 10),
(30, 'User30', '2024-01-10', 'Very happy with the purchase.', 10);

-- Insert 3 placeholder images for Product 1
INSERT INTO IMAGE (id, url, productid) VALUES (1, 'https://via.placeholder.com/150', 1);
INSERT INTO IMAGE (id, url, productid) VALUES (2, 'https://via.placeholder.com/250', 1);
INSERT INTO IMAGE (id, url, productid) VALUES (3, 'https://via.placeholder.com/200', 1);

-- Insert 3 placeholder images for Product 2
INSERT INTO IMAGE (id, url, productid) VALUES (4, 'https://via.placeholder.com/300', 2);
INSERT INTO IMAGE (id, url, productid) VALUES (5, 'https://via.placeholder.com/400', 2);
INSERT INTO IMAGE (id, url, productid) VALUES (6, 'https://via.placeholder.com/350', 2);

-- Insert 3 placeholder images for Product 3
INSERT INTO IMAGE (id, url, productid) VALUES (7, 'https://via.placeholder.com/450', 3);
INSERT INTO IMAGE (id, url, productid) VALUES (8, 'https://via.placeholder.com/550', 3);
INSERT INTO IMAGE (id, url, productid) VALUES (9, 'https://via.placeholder.com/500', 3);

-- Insert 3 placeholder images for Product 4
INSERT INTO IMAGE (id, url, productid) VALUES (10, 'https://via.placeholder.com/600', 4);
INSERT INTO IMAGE (id, url, productid) VALUES (11, 'https://via.placeholder.com/700', 4);
INSERT INTO IMAGE (id, url, productid) VALUES (12, 'https://via.placeholder.com/650', 4);

-- Insert 3 placeholder images for Product 5
INSERT INTO IMAGE (id, url, productid) VALUES (13, 'https://via.placeholder.com/750', 5);
INSERT INTO IMAGE (id, url, productid) VALUES (14, 'https://via.placeholder.com/850', 5);
INSERT INTO IMAGE (id, url, productid) VALUES (15, 'https://via.placeholder.com/800', 5);

-- Insert 3 placeholder images for Product 6
INSERT INTO IMAGE (id, url, productid) VALUES (16, 'https://via.placeholder.com/900', 6);
INSERT INTO IMAGE (id, url, productid) VALUES (17, 'https://via.placeholder.com/1000', 6);
INSERT INTO IMAGE (id, url, productid) VALUES (18, 'https://via.placeholder.com/950', 6);

-- Insert 3 placeholder images for Product 7
INSERT INTO IMAGE (id, url, productid) VALUES (19, 'https://via.placeholder.com/1050', 7);
INSERT INTO IMAGE (id, url, productid) VALUES (20, 'https://via.placeholder.com/1150', 7);
INSERT INTO IMAGE (id, url, productid) VALUES (21, 'https://via.placeholder.com/1100', 7);

-- Insert 3 placeholder images for Product 8
INSERT INTO IMAGE (id, url, productid) VALUES (22, 'https://via.placeholder.com/1200', 8);
INSERT INTO IMAGE (id, url, productid) VALUES (23, 'https://via.placeholder.com/1250', 8);
INSERT INTO IMAGE (id, url, productid) VALUES (24, 'https://via.placeholder.com/1300', 8);

-- Insert 3 placeholder images for Product 9
INSERT INTO IMAGE (id, url, productid) VALUES (25, 'https://via.placeholder.com/1350', 9);
INSERT INTO IMAGE (id, url, productid) VALUES (26, 'https://via.placeholder.com/1400', 9);
INSERT INTO IMAGE (id, url, productid) VALUES (27, 'https://via.placeholder.com/1450', 9);

-- Insert 3 more placeholder images for Product 10
INSERT INTO IMAGE (id, url, productid) VALUES (28, 'https://via.placeholder.com/1500', 10);
INSERT INTO IMAGE (id, url, productid) VALUES (29, 'https://via.placeholder.com/1550', 10);
INSERT INTO IMAGE (id, url, productid) VALUES (30, 'https://via.placeholder.com/1600', 10);

