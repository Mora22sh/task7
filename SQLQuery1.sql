create database task7

use task
create table actor(
id int primary key,
fname varchar(20),
lname varchar(20),
gender char
)

  create table director(
  id int primary key ,
  fname varchar(20),
  lname varchar(20)
 )

 create table movie_direction (
 dri_id int ,
 mov_id int 
)

create table movie_cast(
act_id int,
mov_id int, 
role varchar(30)
)

create table movie (
mov_id int primary key,
mov_title varchar(50),
mov_year int,
mov_time int,
mov_lang varchar(50),
mov_dt_rel datetime2,
mov_rel_country varchar(5)
)

create table reviewer(
rev_id int primary key ,
rev_name varchar(30)
)

create table genres(
gen_id int primary key,
gen_title int
)

create table movie_genres (
mov_id int, 
gen_id int 
)

create table rating (
mov_id int, 
rev_id int ,
rev_stars int ,
num_o_ratings int 
)





