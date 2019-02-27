
create table animals_all(
id integer (11) auto_increment not null,
animal_species varchar(30) not null,
owner_name varchar (30) not null,
primary key (id)
);

insert into animals_all (animal_species, owner_name)
values 
("dog", "bob"),
("fish","bob"),
("cat","kelly"),
("Dolphin","Aquaman");

create table animals_location (
id integer (11) auto_increment not null,
location varchar(30),
animal_id integer (10) not null,
primary key (id),
foreign key (animal_id) references animals_all(id));

insert into animals_location (location, animal_id) values ("doghouse",1);
insert into animals_location (location, animal_id) values ("Fish Tank",2);
insert into animals_location (location, animal_id) values ("Bed",3);
insert into animals_location (location, animal_id) values ("Ocean",4);