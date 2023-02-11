/*название и год выхода альбомов, вышедших в 2018 году;*/
select название, год_выпуска from Альбомы
where год_выпуска = 2018;

/*название и продолжительность самого длительного трека;*/
SELECT название, длительность FROM Треки
order by длительность desc 
limit 1;
 
/*название треков, продолжительность которых не менее 3,5 минуты;*/
select название from Треки
where длительность >= 3.5;

/*названия сборников, вышедших в период с 2018 по 2020 год включительно;*/
select название from Сборники
where год_выпуска between 2018 and 2020;

/*исполнители, чье имя состоит из 1 слова;*/
select Имя from Исполнители
where Имя not like '% %';

/*название треков, которые содержат слово "мой"/"my".*/
select название from Треки
where название like '%мой%' or название  like '%my%';
