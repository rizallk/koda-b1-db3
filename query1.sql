-- 1. Mencari movie dengan tahun rilis lebih dari tahun 2000
select id, name, year from movies where year > 2000 limit 10;

-- 2. Mencari actors dengan akhiran nama 's'
select id, first_name from actors where first_name like '%s' limit 10;

-- 3. Mencari movie dengan rating diantara 5 dan 7 dan tahun rilis 2004 sampai 2006
select id, name, year, rating from movies where rating BETWEEN 5 AND 7 AND year BETWEEN 2004 AND 2006 limit 20;

-- 4. Menghitung jumlah movie dengan rating 6
select count(rating) as "Jumlah movie dengan rating 6" from movies where rating = 6;