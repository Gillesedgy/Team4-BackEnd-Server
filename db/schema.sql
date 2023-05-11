DROP DATABASE IF EXISTS out_n_abt;
CREATE DATABASE out_n_abt;

\c out_n_abt;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
   id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    email TEXT NOT NULL,
    password VARCHAR(250) NOT NULL,
    address TEXT NOT NULL,
    native_language VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
 id SERIAL PRIMARY KEY,
 name VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS listings;

CREATE TABLE listings(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    description TEXT NOT NULL,
    native_language VARCHAR(50) NOT NULL,
    image_url TEXT DEFAULT 'https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image',
    date_posted DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    longitude DECIMAL (10, 6) NOT NULL,
    latitude DECIMAL (10, 6) NOT NULL,
    is_applied BOOLEAN DEFAULT FALSE,
    category_id INTEGER REFERENCES categories(category_id),
    is_favorite BOOLEAN DEFAULT FALSE,
    title TEXT NOT NULL,
    company TEXT NOT NULL
);


DROP TABLE IF EXISTS discussions_board;

CREATE TABLE discussions_board(
   id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    post_title VARCHAR(250) NOT NULL,
    post_content TEXT NOT NULL,
    image_url TEXT DEFAULT 'https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image',
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    native_language VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments(
id SERIAL PRIMARY KEY,
 user_id INTEGER REFERENCES users(user_id),
 discussion_id INTEGER REFERENCES discussions_board(discussion_id),
 comment_body TEXT
);