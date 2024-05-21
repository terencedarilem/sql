-- Création de la table CUSTOMER
CREATE TABLE CUSTOMER (
    CustomerID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Email VARCHAR2(100),
    Phone VARCHAR2(20)
);

-- Création de la table PRODUCT
CREATE TABLE PRODUCT (
    ProductID NUMBER PRIMARY KEY,
    ProductName VARCHAR2(50),
    Price NUMBER,
    StockQuantity NUMBER
);

-- Création de la table ORDERS
CREATE TABLE ORDERS (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    ProductID NUMBER,
    Quantity NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
    CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);
-- Ajouter la colonne Category à la table PRODUCT
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Ajouter la colonne OrderDate à la table ORDERS avec SYSDATE comme valeur par défaut
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;
