--HOME WORK_CREATE TABLE

create table if not exists albums (
    id_album serial primary key,
    album_name varchar(100) unique not null,
    album_year integer check (album_year >= '1930')
);


create table if not exists tracks (
    id_track serial primary key,
    track_name varchar(150) unique not null,
    track_duration time not null,
    id_album integer,
    foreign key (id_album) references albums(id_album)
);


create table if not exists collections (
    id_collection serial primary key,
    collection_name varchar(150) unique not null ,
    collection_year integer check (collection_year >= '1930')
);    


create table if not exists singers (
    id_singer serial primary key,
    nickname varchar(100) unique not null
);


create table if not exists genres (
    id_genre serial primary key,
    genre_name varchar(30) unique not null
);

create table if not exists genres_singers (
    id_gen_sin serial primary key,
    id_genre integer,
    id_singer integer,
    foreign key (id_genre) references genres (id_genre),
    foreign key (id_singer) references singers (id_singer)
);

create table if not exists album_singers (
    id_alb_sin serial primary key,
    id_album integer,
    id_singer integer,
    foreign key (id_album) references albums (id_album),
    foreign key (id_singer) references singers (id_singer)
);


create table if not exists track_collections (
    id_tr_col serial primary key,
    id_track integer,
    id_collection integer,
    foreign key (id_track) references tracks (id_track),
    foreign key (id_collection) references collections (id_collection)
);    


--alter table albums alter column album_year type integer using (album_year::integer);

drop table albums 

drop table album_singers

drop table collections 

drop table tracks



drop table genres_singers 

drop table genres 

drop table  track_collections
       
       
