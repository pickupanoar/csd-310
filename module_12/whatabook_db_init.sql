DROP USER IF EXISTS 'whatabook_user'@'localhost';

CREATE USER 'whatabook_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL8IsGreat!';

GRANT ALL PRIVILEGES ON whatabook.* TO'whatabook_user'@'localhost';

ALTER TABLE wishlist DROP FOREIGN KEY fk_book;
ALTER TABLE wishlist DROP FOREIGN KEY fk_user;

DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS wishlist;
DROP TABLE IF EXISTS user;

/*
    Create table(s)
*/
CREATE TABLE store (
    store_id    INT             NOT NULL    AUTO_INCREMENT,
    locale      VARCHAR(500)    NOT NULL,
    PRIMARY KEY(store_id)
);

CREATE TABLE book (
    book_id     INT             NOT NULL    AUTO_INCREMENT,
    book_name   VARCHAR(200)    NOT NULL,
    author      VARCHAR(200)    NOT NULL,
    details     VARCHAR(500),
    PRIMARY KEY(book_id)
);

CREATE TABLE user (
    user_id         INT         NOT NULL    AUTO_INCREMENT,
    first_name      VARCHAR(75) NOT NULL,
    last_name       VARCHAR(75) NOT NULL,
    PRIMARY KEY(user_id) 
);

CREATE TABLE wishlist (
    wishlist_id     INT         NOT NULL    AUTO_INCREMENT,
    user_id         INT         NOT NULL,
    book_id         INT         NOT NULL,
    PRIMARY KEY (wishlist_id),
    CONSTRAINT fk_book
    FOREIGN KEY (book_id)
        REFERENCES book(book_id),
    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
        REFERENCES user(user_Id)
);

/*
    input store locations
*/
INSERT INTO store(locale)
    VALUES('250 LASALLE LN, CINCINNATI, OH 12345');

/*
    input book records
*/
INSERT INTO book(book_ID, book_name, author)
    VALUES('1''Where the crawdads sing', 'Delia Owens');

INSERT INTO book(book_ID, book_name, author)
    VALUES('2''It ends with us', 'Colleen Hoover');

INSERT INTO book(book_ID, book_name, author)
    VALUES('3''Verity', 'Colleen Hoover');

INSERT INTO book(book_ID, book_name, author)
    VALUES('4''Ugly Love', 'Colleen Hoover');

INSERT INTO book(book_ID, book_name, author)
    VALUES('5''The Hotel Nantucket', 'Elin Hilderbrand');

INSERT INTO book(book_ID, book_name, author)
    VALUES('6'"The Seven Husbands of Evelyn Hugo", 'Taylor Jenkins Reid');

INSERT INTO book(book_ID, book_name, author)
    VALUES('7''Suspects', 'Danielle Steel');

INSERT INTO book(book_ID, book_name, author)
    VALUES('8''Book Lovers', 'Emily Henry');

INSERT INTO book(book_ID, book_name, author)
    VALUES('9''November 9', 'Colleen Hoover');
    
    /*
    Insert users
*/ 
INSERT INTO user(user_id, first_name, last_name) 
    VALUES('1', 'Michael', 'Scott');

INSERT INTO user(user_id, first_name, last_name)
    VALUES('2', 'Dwight', 'Shrute');

INSERT INTO user(user_id, first_name, last_name)
    VALUES('3', 'Jim', 'Halpert');
    
    /*
    Implement wishlist books
*/
INSERT INTO wishlist(wishlist_id, user_id, book_id) 
    VALUES ('1', '3', '1');
INSERT INTO wishlist(wishlist_id, user_id, book_id) 
    VALUES ('2', '1', '4');
INSERT INTO wishlist(wishlist_id, user_id, book_id) 
    VALUES ('3', '2', '7');
