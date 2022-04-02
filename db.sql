CREATE TABLE MENTOR (
	id char(36) not null primary key,
	email varchar(100) not null,
	password varchar(255) not null,
	name varchar(100) not null
)

CREATE TABLE MENTORED (
	id char(36) not null primary key,
	email varchar(100) not null,
	password varchar(255) not null,
	name varchar(100) not null
)

CREATE TABLE AREA (
	id char(36) not null primary key,
	name varchar(50) not null
)

CREATE TABLE LIST_AREAS (
	id char(36) not null primary key,
	id_mentor char(36) not null,
	id_area char(36) not null,
	foreign key (id_mentor) references MENTOR (id),
	foreign key (id_area) references AREA (id)
)

CREATE TABLE SCHEDULE (
	id char(36) not null primary key,
	id_mentor char(36) not null,
	id_mentored char(36) not null,
	date_schedule DATE,
	foreign key (id_mentor) references MENTOR (id),
	foreign key (id_mentored) references MENTORED (id)
)