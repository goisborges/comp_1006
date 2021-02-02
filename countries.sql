-- This is a SQL comment
-- Create our Lesson 3 DB (if it doesnt exist)
CREATE DATABASE IF NOT EXISTS comp_1006_lesson_03;
USE comp_1006_lesson_03;

-- Create the countries table
CREATE TABLE IF NOT EXISTS countries (
	id int(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(2000) NULL,
    population int(15) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    updated_at timestamp NOT NULL DEFAULT current_timestamp on update CURRENT_TIMESTAMP,
    primary key (id)
);