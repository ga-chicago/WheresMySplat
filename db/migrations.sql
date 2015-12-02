CREATE DATABASE where_is_my_splat;
\c where_is_my_splat
CREATE TABLE items (id SERIAL PRIMARY KEY, name varchar(255), owner_id varchar(255));
CREATE TABLE categories (id SERIAL PRIMARY KEY, name varchar(255));
CREATE TABLE accounts (id SERIAL PRIMARY KEY, email varchar(255), hash varchar(255), salt varchar(255));
