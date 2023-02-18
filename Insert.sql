INSERT INTO public."Жанры"
("Имя")
values
('Industrial metal'),
('Sympho-metal'),
('Black metal'),
('Heavy metal'),
('Alt-metal');

insert into public."Исполнители"
(Имя)
values
('Rammstein'),
('Nightwish'),
('Linkin Park'),
('Ozzy Osbourn'),
('Manowar'),
('Cradle of Filth'),
('Iron Maiden'),
('Tristania'),
('Oomph!'),
('Кипелов');

insert into public."Альбомы"
(название, год_выпуска)
values
('Rammstein', 2019),
('Wishmaster', 2000),
('Meteora', 2003),
('Scream', 2010),
('The Lord of Steel', 2012),
('Nymphetamine', 2004),
('The Number of the Beast', 1982),
('Ashes', 2005),
('Ego', 2001),
('Реки времен', 2005);

insert into public."Треки"
(название, Альбом_id, длительность)
values
('Diamant', 1, '00:02:34'),
('Deutschland', 1, '00:05:23'),
('Soul Sucker', 4, '00:04:34'),
('Swansong for a Raven', 6, '00:07:09'),
('Coffin Fodder', 6, '00:05:17'),
('Dead Boys Poem', 2, '00:04:25'),
('Wishmaster', 2, '00:04:25'),
('Numb', 3, '00:03:08'),
('Faint', 3, '00:02:42'),
('Я здесь', 10, '00:05:39'),
('Manowarriors', 5, '00:04:46'),
('Children of the Damned', 7, '00:04:35'),
('Circus', 8, '00:05:09'),
('Supernova', 9, '00:04:01'),
('Willst du frei sein?', 9, '00:03:51');

insert into public."Совместные_исполнители"
values
(1, 1),
(1, 9),
(1, 10),
(2, 2),
(2, 8),
(3, 6),
(4, 4),
(4, 5),
(4, 10),
(4, 7),
(5, 9);

insert into public."Сборники" 
(название, год_выпуска)
values
('Number#1', 2005),
('Number#2', 2003),
('Number#3', 2011),
('Number#4', 2008),
('Number#5', 2012),
('Number#6', 2017),
('Number#7', 2020),
('Number#8', 2021);

insert into public."Совместные_альбомы" 
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

insert into public."Коллекция_треков" 
(Трек_id, Сборник_id)
values
(6, 1),
(1, 5),
(11, 4),
(8, 3),
(7, 3),
(10, 2),
(10, 5),
(2, 2),
(4, 1),
(3, 5),
(9, 4);





