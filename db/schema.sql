DROP DATABASE IF EXISTS out_n_abt;
CREATE DATABASE out_n_abt;

\c out_n_abt;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id serial PRIMARY KEY,
    username varchar(50) NOT NULL,
    email TEXT NOT NULL,
    password varchar(60) NOT NULL,
    address varchar(30) NOT NULL,
    language VARCHAR(50) NOT NULL,
);

DROP TABLE IF EXISTS listings;

CREATE TABLE listings(
    id SERIAL PRIMARY KEY,
    users_id INTEGER REFERENCES Users(id),
    description TEXT NOT NULL,
    language VARCHAR(50) NOT NULL,
    image_url TEXT,
    date_posted DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    longitude DECIMAL (10, 6) NOT NULL,
    latitude DECIMAL (10, 6) NOT NULL,
    is_applied BOOLEAN DEFAULT FALSE,
    category_id INTEGER REFERENCES Category(id),
    is_favorite BOOLEAN DEFAULT FALSE,
    title TEXT NOT NULL,
    company TEXT NOT NULL
);

DROP TABLE IF EXISTS categorys;

CREATE TABLE categorys(
 id SERIAL PRIMARY KEY,
 name VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS discussion_board;

CREATE TABLE discussion_board(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES User(id),
    post_title VARCHAR(250) NOT NULL,
    post_content TEXT NOT NULL,
    image_url TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    language VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments(
 id SERIAL PRIMARY KEY,
 user_id INTEGER REFERENCES User(id),
 discussion_board INTEGER REFERENCES discussion_board(id),
 comment_body TEXT
);