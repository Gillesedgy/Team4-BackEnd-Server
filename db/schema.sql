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
    image_url TEXT
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
    is_favorite BOOLEAN DEFAULT FALSE,
    skills TEXT, 
    requirements TEXT,
    salary DECIMAL(10, 2),
    logo TEXT
);


DROP TABLE IF EXISTS listings;

CREATE TABLE listings(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    description TEXT NOT NULL,
    native_language VARCHAR(50) NOT NULL,
    image_url TEXT [],
    date_posted DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    location VARCHAR(250) NOT NULL,
    is_applied BOOLEAN DEFAULT FALSE,
    is_favorite BOOLEAN DEFAULT FALSE,
    title TEXT NOT NULL,
    company TEXT,
    rooms INTEGER 
);


DROP TABLE IF EXISTS community_board;

CREATE TABLE community_board(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    post_title VARCHAR(250) NOT NULL,
    post_content TEXT NOT NULL,
    image_url TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    native_language VARCHAR(50) NOT NULL
   
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments(
 id SERIAL PRIMARY KEY,
 user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
 community_board_id INTEGER REFERENCES community_board(id) ON DELETE CASCADE,
 comment_body TEXT,
 image_url TEXT
);


DROP TABLE IF EXISTS favorites;

CREATE TABLE favorites (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    listing_id INTEGER REFERENCES listings(id) ON DELETE CASCADE,
    community_board_id INTEGER REFERENCES community_board(id) ON DELETE CASCADE,
    job_id INTEGER REFERENCES jobs(id)ON DELETE CASCADE,
    UNIQUE(user_id, community_board_id, job_id, listing_id)
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
 id SERIAL PRIMARY KEY,
 name VARCHAR(250) NOT NULL
);