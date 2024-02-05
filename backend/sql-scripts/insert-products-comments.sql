-- Inserting 10 products
INSERT INTO PRODUCT ( name, price, description, thumbnail) VALUES
( 'Product 1', 19.99, 'Description for Product 1', 'https://via.placeholder.com/150'),
( 'Product 2', 29.99, 'Description for Product 2', 'https://via.placeholder.com/200'),
( 'Product 3', 39.99, 'Description for Product 3', 'https://via.placeholder.com/250'),
( 'Product 4', 49.99, 'Description for Product 4', 'https://via.placeholder.com/300'),
( 'Product 5', 59.99, 'Description for Product 5', 'https://via.placeholder.com/350'),
( 'Product 6', 69.99, 'Description for Product 6', 'https://via.placeholder.com/400'),
( 'Product 7', 79.99, 'Description for Product 7', 'https://via.placeholder.com/450'),
( 'Product 8', 89.99, 'Description for Product 8', 'https://via.placeholder.com/500'),
( 'Product 9', 99.99, 'Description for Product 9', 'https://via.placeholder.com/550'),
( 'Product 10', 109.99, 'Description for Product 10', 'https://via.placeholder.com/600');

-- Inserting 3 comments for each product
INSERT INTO COMMENT ( author, date, text, productid) VALUES
-- Comments for Product 1
( 'User1', '2024-01-08', 'Great product!', 1),
( 'User2', '2024-01-09', 'I love it!', 1),
( 'User3', '2024-01-10', 'Highly recommended.', 1),

-- Comments for Product 2
( 'User4', '2024-01-08', 'Good value for money.', 2),
( 'User5', '2024-01-09', 'Awesome product!', 2),
( 'User6', '2024-01-10', 'Would buy again.', 2),

-- Comments for Product 3
( 'User7', '2024-01-08', 'Excellent quality.', 3),
( 'User8', '2024-01-09', 'Impressed with the features.', 3),
( 'User9', '2024-01-10', 'Fast shipping.', 3),

-- Comments for Product 4
( 'User10', '2024-01-08', 'Satisfied customer.', 4),
( 'User11', '2024-01-09', 'Exactly as described.', 4),
( 'User12', '2024-01-10', 'Great purchase!', 4),

-- Comments for Product 5
( 'User13', '2024-01-08', 'Nice design.', 5),
( 'User14', '2024-01-09', 'Good packaging.', 5),
( 'User15', '2024-01-10', 'Impressive performance.', 5),

-- Comments for Product 6
( 'User16', '2024-01-08', 'Met my expectations.', 6),
( 'User17', '2024-01-09', 'Solid build quality.', 6),
( 'User18', '2024-01-10', 'Happy with the purchase.', 6),

-- Comments for Product 7
( 'User19', '2024-01-08', 'Perfect for my needs.', 7),
( 'User20', '2024-01-09', 'Fast delivery.', 7),
( 'User21', '2024-01-10', 'Value for money.', 7),

-- Comments for Product 8
( 'User22', '2024-01-08', 'Impressed with the service.', 8),
( 'User23', '2024-01-09', 'Great customer support.', 8),
( 'User24', '2024-01-10', 'Would recommend.', 8),

-- Comments for Product 9
( 'User25', '2024-01-08', 'Awesome product.', 9),
( 'User26', '2024-01-09', 'Highly satisfied.', 9),
( 'User27', '2024-01-10', 'Exactly what I needed.', 9),

-- Comments for Product 10
( 'User28', '2024-01-08', 'Top-notch quality.', 10),
( 'User29', '2024-01-09', 'Great value.', 10),
( 'User30', '2024-01-10', 'Very happy with the purchase.', 10);

-- Insert 3 placeholder images for Product 1
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/150', 1);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/250', 1);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/200', 1);

-- Insert 3 placeholder images for Product 2
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/300', 2);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/400', 2);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/350', 2);

-- Insert 3 placeholder images for Product 3
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/450', 3);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/550', 3);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/500', 3);

-- Insert 3 placeholder images for Product 4
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/600', 4);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/700', 4);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/650', 4);

-- Insert 3 placeholder images for Product 5
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/750', 5);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/850', 5);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/800', 5);

-- Insert 3 placeholder images for Product 6
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/900', 6);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1000', 6);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/950', 6);

-- Insert 3 placeholder images for Product 7
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1050', 7);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1150', 7);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1100', 7);

-- Insert 3 placeholder images for Product 8
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1200', 8);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1250', 8);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1300', 8);

-- Insert 3 placeholder images for Product 9
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1350', 9);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1400', 9);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1450', 9);

-- Insert 3 more placeholder images for Product 10
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1500', 10);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1550', 10);
INSERT INTO IMAGE ( url, productid) VALUES ( 'https://via.placeholder.com/1600', 10);

