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
values ('It''s Been A Long, Long Time', '2:00', NULL), ('Be Friend', '3:45', 1),
       ('Lovely Day', '6:14', 1), ('Blues Boys Tune', '3:29', Null),
       ('I''m King', '2:20', 2), ('Good Man Gon Bad', '2:48', 2),
       ('Needles And Pins', '2:00', 3), ('It''s My Life', '4:12', 5),
       ('She Don''t Know Me', '4:02', 4), ('You Give Love A Bad Name', '3:53', 5),
       ('See Red', '3:02', Null), ('Shiesty Season Intro', '1:47', 6),
       ('Uptown Top Ranking', '3:28', null), ('Fallow Alhea & Donna', '3:35', 7),
       ('Cali Groun', '3:57', 8), ('main Slime', '3:12', 8),
       ('Can''t Make Up My Mind', '3:03', Null), ('Something On so Right', '3:06', Null);

--select * from tracks
--drop table track_collections     
--drop table tracks

insert into track_collections (id_track, id_collection)
values (1, 7), (4, 7), (11, 10), (13, 11), (17, 12), (18, 12);

select * from track_collections; 
--drop table  track_collections 
       
       