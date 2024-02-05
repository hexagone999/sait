-- Creating the PRODUCT table
CREATE TABLE PRODUCT (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT,
    thumbnail TEXT
);

-- Creating the COMMENT table
CREATE TABLE COMMENT (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT NOT NULL,
    date TEXT NOT NULL,
    text TEXT NOT NULL,
    productid INTEGER,
    FOREIGN KEY (productid) REFERENCES PRODUCT(id)
);

-- Creating the IMAGE table
CREATE TABLE IMAGE (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT NOT NULL,
    productid INTEGER,
    FOREIGN KEY (productid) REFERENCES PRODUCT(id)
);