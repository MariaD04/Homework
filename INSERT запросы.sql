INSERT INTO genre (genre_id, name)
VALUES (1, 'Rock'),
       (2, 'Hip Hop'),
       (3, 'Pop music'),
       (4, 'EDM'),
       (5, 'R&B');

INSERT INTO performer (performer_id, name)
VALUES (1, 'Marshmello'),
       (2, 'Rihanna'),
       (3, 'Justin Bieber'),
       (4, 'Maroon 5'),
       (5, 'Imagine Dragons'),
       (6, 'Maneskin'),
       (7, 'Calvin Harris'),
       (8, 'Lady Gaga');
      
INSERT INTO album (album_id, name, year_of_issue)
VALUES (1, 'Joytime', 2016),
       (2, 'Unapologetic', 2012),
       (3, 'Purpose', 2015),
       (4, 'V', 2020),
       (5, 'Origins', 2019),
       (6, 'Chosen', 2017),
       (7, '18 months', 2012),
       (8, 'The fame', 2008),
       (9, 'Evolve', 2020);

INSERT INTO track (album_id, name, duration) 
VALUES (1, 'Happier', 3.35),
       (1, 'Friends', 3.21),
       (2, 'Diamonds', 3.45),
       (2, 'Umbrella', 4.31),
       (3, 'Company', 3.27),
       (4, 'Animals', 3.49),
       (4, 'Maps', 3.11),
       (4, 'This Summer', 3.43),
       (5, 'Real Life', 4.07),
       (5, 'Demons', 2.57),
       (5, 'West Coast', 3.37),
       (6, 'Beggin', 3.31),
       (7, 'My way', 3.39),
       (8, 'Just Dance', 4.01),
       (8, 'Monster', 4.09),
       (9, 'Zero', 3.32),
       (9, 'Digital', 3.21);

INSERT INTO compilation (name, year_of_issue) 
VALUES ('For friends', 2015),
       ('Travelling', 2019),
       ('Opposite', 2011),
       ('Holiday', 2017),
       ('Good mood', 2015),
       ('Dancing', 2009),
       ('Different', 2021),
       ('Way', 2018);
 
INSERT INTO performergenre (performer_id, genre_id)
VALUES (1, 4),
       (2, 2),
       (2, 3),
       (2, 4),
       (3, 3),
       (3, 5),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 4),
       (8, 1),
       (8, 4);

INSERT INTO performeralbum (performer_id, album_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (5, 9),
       (6, 6),
       (7, 7),
       (8, 8);
    
INSERT INTO compilationtrack (compilation_id, track_id)
VALUES (1, 2),
       (1, 5),
       (2, 7),
       (2, 11),
       (3, 10),
       (3, 15),
       (3, 9),
       (4, 8),
       (5, 1),
       (6, 14),
       (6, 12),
       (7, 4),
       (7, 6),
       (8, 13),
       (8, 3);
      
