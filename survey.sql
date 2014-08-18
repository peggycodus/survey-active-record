CREATE DATABASE survey;
CREATE TABLE surveys (id serial PRIMARY KEY, name varchar);
CREATE TABLE persons (id serial PRIMARY KEY, first_name varchar, last_name_name varchar);
CREATE TABLE questions (id serial PRIMARY KEY, number int, description varchar);
CREATE TABLE responses (id serial PRIMARY KEY, number int, description varchar, custom boolean);
