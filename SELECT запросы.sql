--количество исполнителей в каждом жанре;

SELECT g.name, COUNT(performer_id) performer_q FROM genre g
JOIN performergenre pg ON pg.genre_id = g.genre_id 
GROUP BY g.name
ORDER BY performer_q DESC;

--количество треков, вошедших в альбомы 2019-2020 годов;

SELECT a.name, COUNT(track_id) FROM album a
JOIN track t ON t.album_id = a.album_id 
WHERE a.year_of_issue BETWEEN 2019 AND 2020 
GROUP BY a.name;

--средняя продолжительность треков по каждому альбому;

SELECT a.name, AVG(t.duration) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name;

--все исполнители, которые не выпустили альбомы в 2020 году;

SELECT p.name FROM performer p 
WHERE p.name NOT IN (
    SELECT p.name FROM performer p 
    JOIN performeralbum pa ON pa.performer_id = p.performer_id
    JOIN album a ON pa.album_id = a.album_id
    WHERE a.year_of_issue = 2020
);


--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

SELECT c.name FROM compilation c
JOIN compilationtrack ct ON c.compilation_id = ct.compilation_id 
JOIN track t ON ct.track_id = t.track_id 
JOIN album a ON t.album_id = a.album_id 
JOIN performeralbum pa ON pa.album_id = a.album_id 
JOIN performer p ON pa.performer_id = p.performer_id 
WHERE p.name LIKE '%Maroon 5%';

--название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT a.name FROM album a
JOIN performeralbum pa ON pa.album_id = a.album_id 
JOIN performer p ON pa.performer_id = p.performer_id 
JOIN performergenre pg ON pg.performer_id = p.performer_id 
JOIN genre g ON pg.genre_id = g.genre_id 
GROUP BY a.name
HAVING COUNT(g.name) > 1;

--наименование треков, которые не входят в сборники;

SELECT t.name FROM track t
LEFT JOIN compilationtrack ct ON ct.track_id = t.track_id 
WHERE ct.track_id IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

SELECT p.name, t.duration FROM track t
JOIN album a ON a.album_id = t.album_id 
JOIN performeralbum pa ON pa.album_id = a.album_id 
JOIN performer p ON p.performer_id = pa.performer_id 
WHERE t.duration = (SELECT MIN(duration) FROM track)
GROUP BY p.name, t.duration;

--название альбомов, содержащих наименьшее количество треков

SELECT a.name FROM album a
JOIN track t ON t.album_id = a.album_id
WHERE t.album_id IN (
	SELECT album_id FROM track                   
	GROUP BY album_id                    
	HAVING count(track_id) = (
		SELECT count(track_id) FROM track t
		GROUP BY album_id 
		ORDER BY count(track_id)
		LIMIT 1)
);
                   
      
