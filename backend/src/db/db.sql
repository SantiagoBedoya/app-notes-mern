CREATE DATABASE app_notes;

USE app_notes;

-- USER TABLE
CREATE TABLE users(
    id INT(11) NOT NULL,
    fullname VARCHAR(50) NOT NULL,
    username VARCHAR(16) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--TABLE NOTES
CREATE TABLE notes(
    id INT(11) NOT NULL,
    user_id INT(11) NOT NULL,
    title VARCHAR(16) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE notes
    ADD PRIMARY KEY (id);

ALTER TABLE notes
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;