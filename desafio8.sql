SELECT 
    artists.artist_name AS artista,
    albums.album_name AS album
FROM
    SpotifyClone.artists AS artists
	  INNER JOIN SpotifyClone.albums AS albums ON artists.artist_id = albums.artist_id
WHERE
    artists.artist_name LIKE 'Walter Phoenix';
  