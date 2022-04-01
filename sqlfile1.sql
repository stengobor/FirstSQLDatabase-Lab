use chirpr;

create  table users (
id int not null auto_increment primary key,
name varchar (30) not null,
email varchar (50) not null,
password varchar (200) null,
_created datetime default current_timestamp
);

create  table chirps (
id int not null auto_increment primary key,
userid int not null,
content varchar (200) not null,
location varchar (200) null,
_created datetime default current_timestamp
);

create table mentions (
userid int not null, 
chirpid int not null,
primary key (userid, chirpid),
foreign key (userid) references users(id),
foreign key (chirpid) references chirps(id)
);


-- ALTER TABLE chirps
-- ADD CONSTRAINT fk_users_id
-- FOREIGN KEY (userid)
-- REFERENCES users(id);