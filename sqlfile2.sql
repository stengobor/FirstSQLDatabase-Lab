
INSERT INTO users (name, email, password)
VALUES ("Sofi", "s@l.com", "hello1"),
("Soli", "so@l.com", "hello2"),
("Sogy", "sop@l.com", "hello3"),
("Sohhie", "soph@l.com", "hello4"),
("Sotti", "sophie@l.com", "hello5");

INSERT INTO chirps (userid, content, location)
VALUES (1, "is be distracte pagusilike readable English. Many desktop p", "Fargo"),
(1, "is a distribution dktop p", "Fargo"),
(1, "is a distribution desktop p", "Fargo"),
(1, "is a strtion desktp p", "Fargo"),
(1, "is a distribution desop p", "Fargo"),
(2, "isstribution desktop ", "Fargo"),
(1, "is a distribution desktop p", "Fargo"),
(3, "is a distribution desktop p", "Fargo"),
(3, "is a ution desktop p", "Fargo"),
(6, "is a diribution desktop p", "Fargo"),
(2, "i distrution desktop p", "Fargo"),
(1, "is a distribution desktop p", "Fargo");

INSERT INTO mentions (userid, chirpid)
VALUES (1, 6),
(2, 6);

select chirps.*
from chirps
join mentions
on chirps.id = mentions.chirpid
where mentions.userid = 2;


select * from users;

select chirps.content, chirps.location, chirps._created, users.name
from chirps
join users on chirps.userid = users.id
where users.id = 1;

