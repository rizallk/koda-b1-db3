-- 1. Melakukan join directors dan genres ke table movies, limit keluaran sebanyak 50
select m.id as movie_id, m.name as movie_name, mg.genre, d.first_name as director_firstname, d.last_name as director_lastname
from movies m
left join movies_genres mg
  on m.id = mg.movie_id
left join movies_directors md  
  on m.id = md.movie_id
left join directors d   
  on md.director_id = d.id
limit 50;


-- 2. Melakukan join movies dan roles berdasarkan table actors
select a.id as actor_id, a.first_name as actor_firstname, a.last_name as actor_lastname, r.role, m.name as movie_name
from actors a
left join roles r 
  on a.id = r.actor_id
left join movies m 
  on m.id = r.movie_id
limit 10;
