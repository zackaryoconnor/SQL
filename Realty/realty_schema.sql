-- enter your schema for apartments, offices and storefronts below
CREATE DATABASE realty_db;

CREATE TABLE apartments (id serial primary key, apartment_number int, bedrooms int, bathrooms int, address varchar, tenant varchar, occupied boolean, sq_ft int, price int);

CREATE TABLE office (id serial primary key, office_number int, floors int, sq_ft int, cubicles int, bathrooms int, address varchar, company varchar, occupied boolean, price int);

CREATE TABLE storefront (address varchar, occupied boolean, price int, kitchen boolean, sq_ft int, owner varchar, outdoor_seating boolean);