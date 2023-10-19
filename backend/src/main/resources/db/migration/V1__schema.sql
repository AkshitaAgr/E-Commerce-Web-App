-- predefined type, no DDL - XMLTYPE
-- DROP TABLE IF EXISTS cart;
-- DROP TABLE IF EXISTS cartitems;
-- DROP TABLE IF EXISTS category;
-- DROP TABLE IF EXISTS delivery;
-- DROP TABLE IF EXISTS notifications;
-- DROP TABLE IF EXISTS notified_by;
-- DROP TABLE IF EXISTS `order`;
-- DROP TABLE IF EXISTS orderitems;
-- DROP TABLE IF EXISTS order_frequency;
-- DROP TABLE IF EXISTS product;
-- DROP TABLE IF EXISTS transaction;
-- DROP TABLE IF EXISTS `user`;

CREATE TABLE IF NOT EXISTS `user` (
    userid        INTEGER AUTO_INCREMENT PRIMARY KEY,
    firstname     VARCHAR(25) NOT NULL,
    middlename    VARCHAR(25),
    lastname      VARCHAR(25) NOT NULL,
    address       VARCHAR(250) NOT NULL,
    mobile_num    VARCHAR(10) NOT NULL,
    email_address VARCHAR(250) NOT NULL,
    password_hash VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS category (
    categoryid VARCHAR(25) PRIMARY KEY,
    name       VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS cart (
    cartid      INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_userid INTEGER NOT NULL,
    FOREIGN KEY(user_userid) REFERENCES `user`(userid)
);

CREATE TABLE IF NOT EXISTS product (
    productid           VARCHAR(25) PRIMARY KEY,
    name                VARCHAR(100) NOT NULL,
    price               FLOAT(10) NOT NULL,
    store               VARCHAR(25) NOT NULL,
    category_categoryid VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS cartitems (
    quantity          INTEGER NOT NULL,
    cart_cartid       INTEGER NOT NULL,
    product_productid VARCHAR(25) NOT NULL,
    PRIMARY KEY(cart_cartid, product_productid),
    FOREIGN KEY(cart_cartid) REFERENCES cart(cartid),
    FOREIGN KEY(product_productid) REFERENCES product(productid)
    
);

CREATE TABLE IF NOT EXISTS transaction (
    transactionid INTEGER AUTO_INCREMENT PRIMARY KEY,
    `status`        VARCHAR(25),
    user_userid   INTEGER NOT NULL,
    FOREIGN KEY(user_userid) REFERENCES `user`(userid)
);

CREATE TABLE IF NOT EXISTS `order` (
    orderid                   INTEGER AUTO_INCREMENT PRIMARY KEY,
    `date`                    DATE NOT NULL,
    subtotal                  FLOAT NOT NULL,
    shipping                  FLOAT NOT NULL,
    discount                  FLOAT,
    total                     FLOAT NOT NULL,
    transaction_transactionid INTEGER NOT NULL,
    FOREIGN KEY(transaction_transactionid) REFERENCES transaction(transactionid)

);

CREATE TABLE IF NOT EXISTS delivery (
    deliveryid    VARCHAR(25) PRIMARY KEY,
    status        VARCHAR(25) NOT NULL,
    date        DATE NOT NULL,
    time          DATE NOT NULL,
    user_userid   INTEGER NOT NULL,
    order_orderid INTEGER NOT NULL,
    FOREIGN KEY(user_userid) REFERENCES `user`(userid),
    FOREIGN KEY(order_orderid) REFERENCES `order`(orderid)
);


CREATE TABLE IF NOT EXISTS notifications (
    notifid VARCHAR(25) PRIMARY KEY,
    details VARCHAR(250) NOT NULL
);


CREATE TABLE IF NOT EXISTS notified_by (
    user_userid           INTEGER NOT NULL,
    notifications_notifid VARCHAR(25) NOT NULL,
    PRIMARY KEY(user_userid, notifications_notifid),
    FOREIGN KEY(user_userid) REFERENCES `user`(userid),
    FOREIGN KEY(notifications_notifid) REFERENCES notifications(notifid)
);


CREATE TABLE IF NOT EXISTS order_frequency (
    frequency         INTEGER NOT NULL,
    user_userid       INTEGER NOT NULL,
    product_productid VARCHAR(25) NOT NULL,
    PRIMARY KEY(product_productid, user_userid),
    FOREIGN KEY(product_productid) REFERENCES product(productid),
    FOREIGN KEY(user_userid) REFERENCES `user`(userid)
);


CREATE TABLE IF NOT EXISTS orderitems (
    quantity          INTEGER NOT NULL,
    order_orderid     INTEGER NOT NULL,
    product_productid VARCHAR(25) NOT NULL,
    PRIMARY KEY(product_productid, order_orderid),
    FOREIGN KEY(product_productid) REFERENCES product(productid),
    FOREIGN KEY(order_orderid) REFERENCES `order`(orderid)
);
