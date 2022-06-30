SELECT 
    artists.artist_name AS artista, 
    albums.album_name AS album,
    COUNT(`follows`.artist_id) AS seguidores
FROM
    SpotifyClone.`follows` AS `follows`
	INNER JOIN SpotifyClone.artists AS artists ON artists.artist_id = `follows`.artist_id
	INNER JOIN SpotifyClone.albums AS albums ON albums.artist_id = artists.artist_id
GROUP BY albums.album_name, `follows`.artist_id, artists.artist_name
ORDER BY seguidores DESC, artista ASC, album ASC;
