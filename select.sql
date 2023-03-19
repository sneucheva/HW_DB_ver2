--HOME WORK_SELECT

select album_name
from albums 
where album_year = '2018';

select track_name 
from tracks 
order by track_duration desc 
limit 1;

select track_name
from tracks 
where track_duration > 3.5;

select collection_name
from collections c 
where collection_year between 2018 and 2020;

select nickname
from singers  
where array_length(regexp_split_to_array(nickname, '\s+'), 1) = 1;


select track_name
from tracks
where track_name Like '%my%';



select count(gs.id_singer), genre_name 
from genres_singers gs 
join genres g on gs.id_genre = g.id_genre 
group by genre_name; 


select count(track_name) from tracks t
join albums a on a.id_album = t.id_album
where album_year between '2019' and '2021';


select avg(track_duration), al.album_name  from tracks tr
join albums al on al.id_album = tr.id_album 
group by al.id_album; 


select nickname
from singers 
where nickname not in (
    select nickname 
    from singers s
    join album_singers as2 on as2.id_singer = s.id_singer 
    join albums a on a.id_album = as2.id_album 
    where a.album_year = '2021');


select collection_name from collections c
join track_collections tc on tc.id_collection = c.id_collection
join tracks t on t.id_track = tc.id_track
join album_singers alsi on alsi.id_album = t.id_album
join singers s on s.id_singer = alsi.id_singer
where nickname like '%Smoki%';


select album_name from albums a2
join album_singers as2 on as2.id_album = a2.id_album
right join (select count(gs.id_singer), gs.id_singer from genres_singers gs 
            join singers s on s.id_singer = gs.id_singer  
            group by gs.id_singer, gs.id_singer 
            having count(gs.id_singer) > 1) sel on sel.id_singer = as2.id_singer;
            
            
select track_name from tracks t
left join track_collections tc on tc.id_track = t.id_track
where tc.id_collection is null;


select nickname from singers s
join album_singers as3 on as3.id_singer = s.id_singer 
join tracks tr on tr.id_album = as3.id_album
where tr.track_duration = (select min(track_duration) from tracks);


select count(tr.id_album) as "tracks_in_the_album", tr.id_album, al2.album_name 
from tracks tr
join albums al2 on al2.id_album = tr.id_album
group by tr.id_album, al2.album_name
having  count(tr.id_album) = (
select min(tracks_in_the_album) 
from 
    (select count(tr.id_album) as "tracks_in_the_album", tr.id_album, al2.album_name 
     from tracks tr
     join albums al2 on al2.id_album = tr.id_album
     group by tr.id_album, al2.album_name) foo);

    
select album_name from albums a1
join tracks t1 on t1.id_album = a1.id_album 
group by a1.album_name 
having count(id_track) = (
    select count(id_track) from tracks t2 
    join albums a2 on a2.id_album = t2.id_album 
    group by a2.album_name 
    order by count(t2.id_track));

