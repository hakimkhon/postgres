create table moshina (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	nomi VARCHAR(50) NOT NULL
);

CREATE TABLE xodim (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	fish VARCHAR(50) NOT NULL,
	lavozimi VARCHAR(50) NOT NULL,
	moshinasi INT REFERENCES moshina(id) 
);

insert into moshina (nomi) values ('Kobalt');
insert into moshina (nomi) values ('Jentra');
insert into moshina (nomi) values ('Damas');

insert into xodim (fish, lavozimi) values ('Togaev Botir', 'direktor');
insert into xodim (fish, lavozimi) values ('Allaev Bobur', 'yurist');
insert into xodim (fish, lavozimi) values ('Jalolov Alishier', 'buhgalter');
insert into xodim (fish, lavozimi) values ('Umarov Temur', 'Soqchi');

ALTER TABLE users ADD UNIQUE (moshinasi);
