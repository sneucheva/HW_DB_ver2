--HOME WORK_INSERT 

insert into genres (genre_name)
values ('blues'), ('jazz'), ('rock'), ('hip hop'), ('reggae'), ('soul');

--select * from genres

insert into singers (nickname)
values ('Louis Armstrong'), ('B.B.King'), ('Smokie'), ('Bon Jovi'), ('Pooh Shiesty'), 
       ('Alhea & Donna'), ('Gloria Tells'), ('Stonekeepess');
--select * from singers
       
insert into genres_singers (id_genre, id_singer)
values (1, 1), (1,2), (2, 1), (3, 3), (3, 4), (4, 5), (5, 6), (6, 7), (6, 8);

--select * from genres_singers

insert into albums (album_name, album_year)
values ('Ell and Louis', '1956'), ('I''m King', '2022'), ('Bratislava', '1983'),
       ('Bon Jovi', '1984'), ('One Wild Nihgt Live', '2001'), ('Memorial Day', '2021'),
       ('Uptoun', '1978'), ('Cali Grown', '2007');
       
--select * from albums       
       
insert into album_singers (id_album, id_singer)
values (1, 1), (2, 2), (3, 3), (4, 4), (5, 4),(6, 5), (7, 6), (8, 6); 

--select * from album_singers 

insert into collections (collection_name, collection_year)
values ('Top 100 Blues', '2018'), ('BBC Top Of The Pops 1976', '1976'),('BBC Top Of The Pops 1977', '1977'), 
       ('Hip Hop 100', '2022'), ('100 Hits Reggae', '2006'), ('The Best Soul', '2020'),
       ('Family Album', '2016'), ('Top Rock', '2020');
       
select * from collections;       
    
insert into tracks (track_name, track_duration, id_album)
values ('It''s Been A Long, Long Time', '00:2:00', NULL), ('Be Friend', '00:03:45', 1),
       ('Lovely Day', '00:06:14', 1), ('Blues Boys Tune', '00:03:29', Null),
       ('I''m King', '00:02:20', 2), ('Good Man Gon Bad', '00:02:48', 2),
       ('Needles And Pins', '00:02:00', 3), ('It''s My Life', '00:04:12', 5),
       ('She Don''t Know Me', '00:04:02', 4), ('You Give Love A Bad Name', '00:03:53', 5),
       ('See Red', '00:03:02', Null), ('Shiesty Season Intro', '00:01:47', 6),
       ('Uptown Top Ranking', '00:03:28', null), ('Fallow Alhea & Donna', '00:03:35', 7),
       ('Cali Groun', '00:03:57', 8), ('main Slime', '00:03:12', 8),
       ('Can''t Make Up My Mind', '00:03:03', Null), ('Something On so Right', '00:03:06', Null);

select * from tracks;
    
drop table tracks;

insert into track_collections (id_track, id_collection)
values (1, 7), (4, 7), (11, 10), (13, 11), (17, 12), (18, 12);

select * from track_collections; 

drop table  track_collections; 
       
       