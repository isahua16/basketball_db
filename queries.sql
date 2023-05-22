insert into team(name, city, conference) VALUES('Thunderbolts', 'Seattle', 'Western'), ('Titans', 'Miami', 'Eastern'), ('Mavericks', 'Denver', 'Western');

insert into player(first_name, last_name, `position`, `number`, team_id) VALUES('Ethan', 'Barnes', 'Point Guard', 7, 1),
('Olivia', 'Mitchell', 'Forward', 21, 1),
('Marcus','Johnson', 'Center', 33, 1),
('Sophia','Thompson', 'Post', 14, 1),
('Caleb', 'Anderson','Forward', 24, 1);

insert into player(first_name, last_name, `position`, `number`, team_id) VALUES
('Noah', 'Parker', 'Point Guard', 5, 2),
('Ava', 'Turner', 'Forward', 15, 2),
('Xavier','Jackson', 'Center', 23, 2),
('Mia','Sanchez', 'Post', 10, 2),
('Elijah', 'Roberts','Forward', 32, 2);

insert into player(first_name, last_name, `position`, `number`, team_id) VALUES
('Benjamin', 'Scott', 'Point Guard', 3, 3),
('Isabelle', 'Ramirez', 'Forward', 11, 3),
('Lily','Thompson', 'Center', 12, 3),
('Jackson','White', 'Post', 55, 3),
('Daniel', 'Harris','Forward', 30, 3);

insert into game(`date`, home_team_id, away_team_id) VALUES
('2023-05-21', 1, 2),
('2023-05-19', 2, 3),
('2023-05-16', 1, 3);

insert into `point`(game_id, player_id, total) VALUES
(1, 1, 0), (1, 2, 22), (1, 3, 12), (1, 4, 6), (1, 5, 23), (1, 6, 2), (1, 7, 0), (1, 8, 35), (1, 9, 10), (1, 10, 0);

insert into `point`(game_id, player_id, total) VALUES
(2, 6, 11), (2, 7, 9), (2, 8, 0), (2, 9, 15), (2, 10, 20), (2, 11, 0), (2, 12, 0), (2, 13, 42), (2, 14, 7), (2, 15, 25);

insert into `point`(game_id, player_id, total) VALUES
(3, 1, 32), (3, 2, 12), (3, 3, 12), (3, 4, 0), (3, 5, 22), (3, 11, 8), (3, 12, 21), (3, 13, 18), (3, 14, 12), (3, 15, 2);

SELECT * from team;

SELECT * from player;

SELECT name, city from team;

SELECT p.first_name, p.last_name, t.name FROM team t INNER JOIN player p ON t.id=p.team_id;

SELECT first_name, last_name, from player where `position`='Center';

SELECT p.first_name, p.last_name from team t INNER JOIN player p ON t.id = p.team_id where p.`position`='Point Guard' AND t.conference = 'Western';

SELECT pl.first_name, pl.last_name, SUM(pt.total) from player pl INNER JOIN point pt ON pl.id=pt.player_id GROUP BY pl.id;
