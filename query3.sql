-- 1. Mendapatkan director, berapa genre yang di-direct
select d.id, first_name, last_name, count(genre) as jumlah_direct
from directors d 
join directors_genres dg
  on d.id = dg.director_id
group by d.id, first_name, last_name
limit 10;

-- 2. Mendapatkan actors yang memiliki roles lebih dari 5
select a.id, a.first_name, a.last_name, count(r.role) as jumlah_role
from actors a
join roles r
  on a.id = r.actor_id
group by a.id, a.first_name, a.last_name
having count(r.role) > 5
limit 10;

-- 3. Mendapatkan directors paling produktif sepanjang masa
select first_name, last_name, count(*) as jumlah_produktif
from directors d
join movies_directors md
  on d.id = md.director_id
group by first_name, last_name
order by jumlah_produktif desc;

-- 4. Mendapatkan tahun tersibuk sepanjang masa
select year, count(year) as tahun_tersibuk
from movies
group by year
order by tahun_tersibuk desc
limit 10;

-- 5. Mendapatkan movies dengan genres yang dibuatkan menjadi 1 column (value dipisahkan dengan comma) dengan menggunakan string_agg
select m.name, string_agg(mg.genre, ', ') as genres
from movies m
join movies_genres mg
  on m.id = mg.movie_id
group by m.name
limit 10;