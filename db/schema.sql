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
    native_language VARCHAR(50) NOT NULL,
    image_url TEXT DEFAULT 'https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
 id SERIAL PRIMARY KEY,
 name VARCHAR(250) NOT NULL
);


DROP TABLE IF EXISTS jobs;

CREATE TABLE jobs(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    job_title VARCHAR(250) NOT NULL,
    company VARCHAR(250),
    email VARCHAR(50) NOT NULL,
    location VARCHAR(250) NOT NULL,
    posted_date TIMESTAMP DEFAULT NOW(),
    job_type VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    native_language VARCHAR(50) NOT NULL,
    is_favorite BOOLEAN DEFAULT FALSE
);

DROP TABLE IF EXISTS listings;

CREATE TABLE listings(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    description TEXT NOT NULL,
    native_language VARCHAR(50) NOT NULL,
    image_url TEXT DEFAULT 'https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image',
    date_posted DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    longitude DECIMAL (10, 6) NOT NULL,
    latitude DECIMAL (10, 6) NOT NULL,
    is_applied BOOLEAN DEFAULT FALSE,
    is_favorite BOOLEAN DEFAULT FALSE,
    title TEXT NOT NULL,
    company TEXT 
);

DROP TABLE IF EXISTS discussions_board;

CREATE TABLE discussions_board(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
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
 user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
 discussions_id INTEGER REFERENCES discussions_board(id) ON DELETE CASCADE,
 comment_body TEXT,
 image_url TEXT DEFAULT 'https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'
);

DROP TABLE IF EXISTS jobs;

CREATE TABLE jobs(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    job_title VARCHAR(250) NOT NULL,
    company VARCHAR(250),
    email VARCHAR(50) NOT NULL,
    location VARCHAR(250) NOT NULL,
    posted_date TIMESTAMP DEFAULT NOW(),
    job_type VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    native_language VARCHAR(50) NOT NULL,
    is_favorite BOOLEAN DEFAULT FALSE
   
);