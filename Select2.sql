/*количество исполнителей в каждом жанре;*/
select g.Имя, count(Исполнитель_id) from "Совместные_исполнители" b 
left join Жанры g ON b.Жанр_id = g.id
group by  g.Имя;

/*количество треков, вошедших в альбомы 2019-2020 годов;*/
select count(s.id) from Треки s
left join Альбомы a on s.Альбом_id = a.id
where a.год_выпуска  between 2019 and 2020;

/*средняя продолжительность треков по каждому альбому;*/
select a.название, avg(s.длительность) FROM Треки s
left join Альбомы a ON s.Альбом_id = a.id
group by a.id;

/*все исполнители, которые не выпустили альбомы в 2020 году;*/
select Имя from Исполнители b2 
except
select b.Имя from Совместные_альбомы ba
join Альбомы a on a.id = ba.Альбом_id
join Исполнители b on b.id = ba.Исполнитель_id 
where a.год_выпуска  = 2020;

/*названия сборников, в которых присутствует конкретный исполнитель (выберите сами);*/
select distinct coll.название from Сборники coll 
join Коллекция_треков sc on sc.Сборник_id  = coll.id 
join Треки s on s.id = sc.Трек_id 
join Альбомы a on a.id = s.Альбом_id 
join Совместные_альбомы ba on ba.Альбом_id = a.id 
join Исполнители b on b.id = ba.Исполнитель_id
where b.Имя = 'Rammstein';

/*название альбомов, в которых присутствуют исполнители более 1 жанра;*/
select a.название, count(g.Имя) from Альбомы a 
join Совместные_альбомы ba on ba.Альбом_id = a.id 
join Исполнители b on b.id = ba.Исполнитель_id 
join Совместные_исполнители gb on gb.Исполнитель_id = b.id 
join Жанры g on g.id = gb.Жанр_id 
group by a.название 
having count(g.Имя) > 1;

/*наименование треков, которые не входят в сборники;*/
select s.название from Треки s
left join Коллекция_треков sc on sc.Трек_id = s.id 
where sc.Сборник_id is null; 

/*исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);*/
select s.название, s.длительность from Треки s
join Альбомы a on s.Альбом_id = a.id
join Совместные_альбомы ba on ba.Альбом_id = a.id
join Исполнители b on ba.Исполнитель_id = b.id 
where s.длительность = (select min(длительность) from Треки);

/*название альбомов, содержащих наименьшее количество треков.*/
select a.название, count(s.id)  from Альбомы a
join Треки s on s.Альбом_id = a.id 
group by a.id 
having count(s.id) = 
	(select count(s.id)  from Альбомы a 
	join Треки s on s.Альбом_id = a.id 
	group by a.id 
	order by count(s.id)
	limit 1);



