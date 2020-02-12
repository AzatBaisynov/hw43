create table visitors(
fio varchar (50) primary key,
birth_date date not null,
sexual_identity varchar (1) not null
);

create table visits(
visitor varchar (50) references visitors(fio) primary key,
visiting_time timestamp not null,
trainer varchar (50) unique not null
);

insert into visitors(fio, birth_date, sexual_identity ) values ('Alma Balma Calma', '1996-11-18', 'm');
insert into visits(visitor, visiting_time, trainer ) values ('Alma Balma Calma', '2020-02-08 16:38:40', 'Salma');