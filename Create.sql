create table if not exists Жанры (
	id serial primary key,
	Имя varchar(60) not null unique
);

create table if not exists Исполнители (
	id serial primary key,
	Имя varchar(60) not null
);


create table if not exists Совместные_исполнители (
	Жанр_id integer not null references Жанры(id),
	Исполнитель_id integer not null references Исполнители(id),
    constraint pk_Совместные_исполнители primary key (Жанр_id, Исполнитель_id)
);

create table if not exists Альбомы (
	id serial primary key,
	название varchar(60) not null,
	год_выпуска integer not null
);

create table if not exists Совместные_альбомы (
	Исполнитель_id integer not null references Исполнители(id),
	Альбом_id integer not null references Альбомы(id),
	CONSTRAINT pk_Совместные_альбомы PRIMARY KEY (Альбом_id, Исполнитель_id)
);

create table if not exists Треки (
	id serial primary key,
	название varchar(60) not null,
	длительность numeric(3,2) not null,
	Альбом_id integer references Альбомы(id) 
);

create table if not exists Сборники(
	id serial primary key,
	название varchar(60) not null,
	год_выпуска integer  not null
);

create table if not exists Коллекция_треков(
	Сборник_id integer not null references Сборники(id),
	Трек_id integer not null references Треки(id),
	CONSTRAINT pk_Коллекция_треков PRIMARY KEY (Трек_id, Сборник_id)
);